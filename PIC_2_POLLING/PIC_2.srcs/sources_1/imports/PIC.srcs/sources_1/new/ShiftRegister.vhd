library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shiftregister is
    Port ( Clk : in  STD_LOGIC;    -- Reloj de entrada a la FPGA
            Reset  : in  std_logic;
            Enable : in  std_logic;
            D      : in  std_logic;
            Q      : out std_logic_vector(7 downto 0));
            
end shiftregister;

architecture a_shift_register of shiftregister is
signal Qtemp : STD_LOGIC_VECTOR(7 downto 0);
begin
  PROC_CONT : process (Clk, Reset)
    begin
    if Reset= '0' then
        Qtemp <= (others => '0');
    elsif Clk'event and Clk='1'  then
           if Enable='1' then
             Qtemp <= D & Qtemp(7 downto 1);
          end if;	
        end if;
    end process;
Q <= Qtemp;
end a_shift_register;
