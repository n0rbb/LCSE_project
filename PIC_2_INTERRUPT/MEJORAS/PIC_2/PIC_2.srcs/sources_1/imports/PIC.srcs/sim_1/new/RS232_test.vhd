
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE RS232_test IS

-------------------------------------------------------------------------------
-- Procedure for sending one byte over the RS232 serial input
-------------------------------------------------------------------------------
      procedure Transmit (
        signal   TX   : out std_logic;      -- serial line
        constant DATA : in  std_logic_vector(7 downto 0);
        constant StopBit: in std_logic); -- byte to be sent

END RS232_test;

PACKAGE BODY RS232_test IS

-----------------------------------------------------------------------------
-- Procedure for sending one byte over the RS232 serial input 
-----------------------------------------------------------------------------     
           procedure Transmit (
             signal   TX   : out std_logic;  -- serial output
             constant DATA : in  std_logic_vector(7 downto 0);
             constant StopBit : in std_logic) is
           begin
       
             TX <= '0'; --StartBit
             wait for 8680.6 ns;  -- about to send byte

             for i in 0 to 7 loop
               TX <= DATA(i);
               wait for 8680.6 ns;
             end loop;  -- i

             TX <= StopBit;
             wait for 8680.6 ns;

             TX <= '1'; --EOT

           end Transmit;

END RS232_test;

