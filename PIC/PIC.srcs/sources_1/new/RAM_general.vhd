
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

ENTITY RAM_PG IS
PORT (
   Clk      : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout    std_logic_vector(7 downto 0)
   );
END RAM_PG;

ARCHITECTURE behavior OF RAM_PG IS

  SIGNAL contents_ram : array8_ram(191 downto 0); -- 192 posiciones en la RAM de propósito general (0x40 a 0xFF)

BEGIN

-------------------------------------------------------------------------
-- Memoria de prop�sito general
-------------------------------------------------------------------------
p_ram : process (clk)  -- no reset
begin
  
  if clk'event and clk = '1' then
    if write_en = '1' and databus /= "ZZZZZZZZ" then
      contents_ram(to_integer(unsigned(address))) <= databus;
    end if;
  end if;

end process;

databus <= contents_ram(to_integer(unsigned(address))) when oe = '1' else (others => 'Z');


END behavior;
