library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity trx is
    port(
        reset, start, clk : in std_logic;
        StpBit : in std_logic;
        data : in std_logic_vector(7 downto 0);
        tx, eot : out std_logic
    );
end trx;


architecture Behavioral of trx is
    -- Estados
    type estados is (idle, startBit, sendData, stopBit);
    signal current_state, next_state : estados;
    
    -- Contadores
    signal data_count : unsigned(3 downto 0); --Cambiar a Unsigned (4 bit)
    signal Pulse_width : unsigned(7 downto 0);

    -- Constantes
    constant PulseEndOfCount : unsigned(7 downto 0) := to_unsigned(173, 8); --173 en 8 bits, + un ciclo de registro.

begin
    combinacional : process(start, StpBit, data, data_count, current_state, pulse_width) --Lógica de transiciones y de salidas. NO SECUENCIAL. Esto se va a ejecutar cada vez que current_state cambie.
    begin
        case current_state is
            when idle =>
                tx <= '1'; -- Pasamos un 1 porque no hay transmisión.
                eot <= '1'; --EOT activo en idle.
                if (start = '1') then
                    next_state <= startBit;
                else
                    next_state <= idle;
                end if;

            when startBit =>
                tx <= '0'; -- El primer bit es siempre un 0;
                eot <= '0'; -- Bajamos EOT.
                if (pulse_width = pulseEndOfCount) then
                    next_state <= sendData;
                else
                    next_state <= startBit;
                end if;

            when sendData =>
                tx <= data(to_integer(data_count));
                eot <= '0'; -- En teoría no debería cambiar EOT.
                if (data_count = 7 and pulse_width = PulseEndOfCount) then --Téngase en cuenta que aquí ponemos el flag a stopBit, pero queda un ciclo de ejecución antes de asignar al current state porque step activa otra vez esto.
                    next_state <= stopBit;
                else
                    next_state <= sendData;
                end if;

            when stopBit =>
                tx <= StpBit;
                --tx <= '1'; -- El bit de terminar es un 1
                eot <= '0';
                if (pulse_width = PulseEndOfCount) then
                    next_state <= idle;
                else
                    next_state <= stopBit;
                end if;
            
        end case;

    end process combinacional;

    secuencial : process(clk, reset) --El proceso secuencial incrementa los contadores que tenga que incrementar y llama a combinacional.
    begin
        if (reset = '0') then --Reset asíncrono (se puede resetear en estado de reloj).
            -- Estado
            current_state <= idle;
            
            -- Contadores
            pulse_width <= (others => '0');
            data_count <= (others => '0');

        elsif CLK'event and CLK = '1' then

            case current_state is 
                when idle =>
                    pulse_width <= (others => '0');
                    data_count <= (others => '0');

                when startBit =>
                    data_count <= (others => '0');
                    if (pulse_width = PulseEndOfCount) then
                        pulse_width <= (others => '0');
                    else
                        pulse_width <= pulse_width + 1;
                    end if;
                
                when sendData =>
                    if (pulse_width = PulseEndOfCount) then
                        pulse_width <= (others => '0');
                        if (data_count = 8) then  --Creo que esto se puede quitar (no se debería llegar aquí nunca)
                            data_count <= (others => '0');
                        else
                            data_count <= data_count + 1;
                        end if;
                    else
                        --data_count = data_count 
                        pulse_width <= pulse_width + 1;
                    end if;

                when stopBit =>
                    data_count <= (others => '0');
                    if (pulse_width = PulseEndOfCount) then
                        pulse_width <= (others => '0');
                    else
                        pulse_width <= pulse_width + 1;
                    end if;
            end case;

            current_state <= next_state;
        end if;

    end process secuencial;

end Behavioral;
