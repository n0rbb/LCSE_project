-------------------------------------------------------------------------------------
-- Company: 
-- Engineer: Mario de Miguel
-- 
-- Create Date: 12.10.2024 20:06:44
-- Design Name: 
-- Module Name: rrx - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity rrx is
    Port (
        Reset, Clk, LineRD_in       : in  std_logic;     -- Señales de entrada
        StpBit                      : in std_logic;
        Valid_out, Code_out, Store_out   : out std_logic    -- Salidas
    );
end rrx;

architecture Behavioral of rrx is

    type estados is (idle, startBit, rcvData, stopBit);
    signal next_state, current_state : estados;
    
    signal DataCount        : unsigned(3 downto 0);       -- Contador de bits de datos (8 bits)
    signal HalfBitCounter   : unsigned(7 downto 0);                   -- Contador para retardo al centro del bit inicial
    signal bitCounter       : unsigned(7 downto 0);                 -- Contador para retardo al centro de los bits de datos
    
    
    constant BitPeriod      : unsigned(7 downto 0) := to_unsigned(173, 8);   -- Período del bit para 115200 bps con reloj de 20 MHz
    

    begin
    -- Combinacional
    combinacional : process(current_state, stpBit, Reset, LineRD_in, dataCount, HalfBitCounter, bitCounter)
    begin
        code_out <= LineRD_in; --Siempre tenemos a la salida la entrada. 
        case current_state is
            when idle => 
            Valid_out <= '0';
            Store_out <= '0';

            if LineRD_in = '0' then -- Detecta el bit de start (nivel bajo)
                next_state <= startBit;
            else
                next_state <= idle;
            end if;

            when startBit =>
            Store_out <= '0';
            if (HalfBitCounter = BitPeriod/2) then --Fin de StartBit (desfase de medio bit conseguido)
           
                if LineRD_in = '0' then --Comprobación del bit
                    Valid_out <= '1';
                    next_state <= rcvData; -- Ta bien
                else
                    Valid_out <= '0'; -- Ta mal
                    next_state <= idle;
                end if;
                
            else -- Continuamos en StartBit 
                Valid_out <= '0';
                next_state <= startBit;
            end if;

            when rcvData =>
            Store_out <= '0'; --Siempre vamos a tener el store out a 0 aquí. 
            
            if BitCounter = BitPeriod then -- Estamos en un centro de bit
                Valid_out <= '1'; -- Indica que el bit es válido / Señal de enable para el SR.
                if DataCount = 7 then
                    next_state <= stopBit;
                else -- DataCount + 1 y a muestrear el siguiente bit
                    next_state <= rcvData;
                end if;

            else  -- Seguimos yendo al siguiente centro de bit
                Valid_out <= '0';
                next_state <= rcvData;
            end if;
        
            when stopBit =>
            Valid_out <= '0'; --Siempre valid out a 0
                if BitCounter = BitPeriod then
                    if LineRD_in = stpBit then -- Comprueba el bit de parada (debe ser alto)
                        Store_out <= '1'; -- Indica que el byte recibido es válido -- Almacenamiento en fifo
                    else
                        Store_out <= '0'; -- Error de alineamiento en el bit de parada -- No se almacena
                    end if;
                    next_state <= idle;
                else
                    Store_out <= '0';
                    next_state <= stopBit;
                end if;  

        end case;
    end process combinacional;

    -- Secuencial
    secuencial : process(Clk, Reset)
    begin
        if Reset = '0' then
            -- Estado idle;
            current_state <= idle;
            -- Contadores
            DataCount <= (others => '0');
            HalfBitCounter <= (others => '0');
            BitCounter <= (others => '0');
  
        elsif CLK'event and CLK = '1' then
            case current_state is
                when idle =>
                    HalfBitCounter <= (others => '0'); -- Sacar contadores de aquí y meter al secuencial
                    BitCounter <= (others => '0');
                    dataCount <= (others => '0');

                when startBit =>
                    BitCounter <= (others => '0');
                    DataCount <= (others => '0');

                    if HalfBitCounter = BitPeriod/2 then
                        HalfBitCounter <= (others => '0');
                    else
                        HalfBitCounter <= HalfBitCounter + 1;
                    end if;

                when rcvData =>
                    HalfBitCounter <= (others => '0');

                    if BitCounter = BitPeriod then 
                        BitCounter <= (others => '0');

                        if dataCount = 7 then
                            dataCount <= (others => '0');
                        else
                            dataCount <= dataCount + 1;
                        end if;

                    else
                        BitCounter <= BitCounter + 1; --No pongo Data_count en este caso porque quiero el latch (proceso secuencial)
                    end if;

                when stopBit =>
                    HalfBitCounter <= (others => '0');
                    dataCount <= (others => '0');

                    if BitCounter = BitPeriod then
                        BitCounter <= (others => '0');
                    else
                        BitCounter <= BitCounter + 1;
                    end if;
                    
            end case;

        current_state <= next_state;
        end if;
    end process secuencial;

end Behavioral;
