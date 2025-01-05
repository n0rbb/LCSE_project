library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE work.PIC_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_ES is
PORT(
   Clk      : in    std_logic;
   Reset    : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
   Switches : out   std_logic_vector(7 downto 0);
   Temp_L   : out   std_logic_vector(6 downto 0);
   Temp_H   : out   std_logic_vector(6 downto 0));
end RAM_ES;

architecture Behavioral of RAM_ES is
    signal contents_ram : array8_ram(63 downto 0);
    attribute dont_touch : string;
    attribute dont_touch of contents_ram : signal is "true";
begin

p_ram : process (reset, clk)  -- sí reset
begin
  if reset = '0' then -- Inicializar todas las direcciones específicas
    contents_ram(to_integer(unsigned(DMA_RX_BUFFER_MSB))) <= "00000000";
    contents_ram(to_integer(unsigned(DMA_RX_BUFFER_MID))) <= "00000000";
    contents_ram(to_integer(unsigned(DMA_RX_BUFFER_LSB))) <= "00000000";
    contents_ram(to_integer(unsigned(NEW_INST))) <= "00000000";
    contents_ram(to_integer(unsigned(DMA_TX_BUFFER_MSB))) <= X"00";
    contents_ram(to_integer(unsigned(DMA_TX_BUFFER_LSB))) <= X"00";
    contents_ram((to_integer(unsigned(LEVER_BASE)) - 1) downto to_integer(unsigned(SWITCH_BASE))) <= (others => "00000000");  --REVISAR QUE ESTO SON SOLO 8 POSICIONES
    --He puesto -1 en el lever base porque la última posición está incluida
    contents_ram((to_integer(unsigned(CAL_OP)) - 1) downto to_integer(unsigned(LEVER_BASE))) <= (others => "00000000"); --IGUAL, REVISAR QUE NO ESTOY ENTRANDO EN DIRECCIONES RESERVADAS
    contents_ram(to_integer(unsigned(CAL_OP))) <= "00000000";
    
    contents_ram(to_integer(unsigned(T_STAT))) <= "00010001"; -- BCD
     
  elsif clk'event and clk = '1' then    
    if write_en = '1' then --and databus /= "ZZZZZZZZ" then
      contents_ram(to_integer(unsigned(address))) <= databus;
   -- elsif write_en = '1' and databus = "ZZZZZZZZ" then
   --   contents_ram(to_integer(unsigned(address))) <= (others => '0');
    end if;
  end if;

end process;

databus <= contents_ram(to_integer(unsigned(address))) when oe = '0' else (others => 'Z');
-------------------------------------------------------------------------
-- contents_ram(to_integer(unsigned(DMA_RX_BUFFER_MSB))) <= databus;

--Meto las salidas de los switches => Se asocia a cada línea de interruptor el LSB
Switches(0) <= contents_ram(to_integer(unsigned(SWITCH_BASE)))(0);
Switches(1) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 1)(0);
Switches(2) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 2)(0);
Switches(3) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 3)(0);
Switches(4) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 4)(0);
Switches(5) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 5)(0);
Switches(6) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 6)(0);
Switches(7) <= contents_ram(to_integer(unsigned(SWITCH_BASE)) + 7)(0); --Sintaxis horrible

-- Meto los dos dígitos de temperatura
-------------------------------------------------------------------------
-- Decodificador de BCD a 7 segmentos
-------------------------------------------------------------------------
with contents_ram(to_integer(unsigned(T_STAT)))(7 downto 4) select
    Temp_H <=
        "0111111" when "0000",  -- 0
        "0000110" when "0001",  -- 1
        "1011011" when "0010",  -- 2
        "1001111" when "0011",  -- 3
        "1100110" when "0100",  -- 4
        "1101101" when "0101",  -- 5
        "1111101" when "0110",  -- 6
        "0000111" when "0111",  -- 7
        "1111111" when "1000",  -- 8
        "1101111" when "1001",  -- 9
        "1111001" when others;  -- E (error)
        
    with contents_ram(to_integer(unsigned(T_STAT)))(3 downto 0) select
    Temp_L <=
        "0111111" when "0000",  -- 0
        "0000110" when "0001",  -- 1
        "1011011" when "0010",  -- 2
        "1001111" when "0011",  -- 3
        "1100110" when "0100",  -- 4
        "1101101" when "0101",  -- 5
        "1111101" when "0110",  -- 6
        "0000111" when "0111",  -- 7
        "1111111" when "1000",  -- 8
        "1101111" when "1001",  -- 9
        "1111001" when others;  -- E (error)
-------------------------------------------------------------------------

--

end Behavioral;
