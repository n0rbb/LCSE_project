LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

entity RAM_top is
    port(
        Clk      : in    std_logic;
        Reset    : in    std_logic;
        write_en : in    std_logic;
        oe       : in    std_logic;
        address  : in    std_logic_vector(7 downto 0);
        databus  : inout std_logic_vector(7 downto 0);
        Switches : out   std_logic_vector(7 downto 0);
        Temp_L   : out   std_logic_vector(6 downto 0);
        Temp_H   : out   std_logic_vector(6 downto 0)
    );
end RAM_top;


architecture behavior of RAM_top is

    signal write_en_pg, write_en_es : std_logic;
    signal oe_pg, oe_es : std_logic;

    component RAM_PG
        port(
            Clk      : in    std_logic;
            write_en : in    std_logic;
            oe       : in    std_logic;
            address  : in    std_logic_vector(7 downto 0);
            databus  : inout std_logic_vector(7 downto 0)
        );

    end component;
    
    
    component RAM_ES
        port(
            Clk      : in    std_logic;
            Reset    : in    std_logic;
            write_en : in    std_logic;
            oe       : in    std_logic;
            address  : in    std_logic_vector(7 downto 0);
            databus  : inout std_logic_vector(7 downto 0);
            Switches : out   std_logic_vector(7 downto 0);
            Temp_L   : out   std_logic_vector(6 downto 0);
            Temp_H   : out   std_logic_vector(6 downto 0)      
        );
    end component;

    
    begin
    
    RAM_general : RAM_PG
        port map (
            Clk       => Clk,
            Write_en  => Write_en_pg,
            oe        => oe_pg,
            address   => address,
            databus   => databus
        );
    
        
    RAM_especifica : RAM_ES
        port map (
            Reset       => Reset, 
            Clk         => Clk,
            Write_en    => Write_en_es,
            oe          => oe_es,
            address     => address,
            databus     => databus,
            Switches    => Switches,
            Temp_L      => Temp_L,
            Temp_H      => Temp_H
        );



    Combinacional : process(address, write_en, oe)
    begin 
        if write_en = '1' then
            if (to_integer(unsigned(address)) > 63) then
                write_en_pg <= '1';
                write_en_es <= '0';
                oe_pg <= '0';
                oe_es <= '0';
            else
                write_en_pg <= '0';
                write_en_es <= '1';
                oe_pg <= '0';
                oe_es <= '0';
            end if;   

        elsif oe = '1' then
            if (to_integer(unsigned(address)) > 63) then
                write_en_pg <= '0';
                write_en_es <= '0';
                oe_pg <= '1';
                oe_es <= '0';
                
            else
                write_en_pg <= '0';
                write_en_es <= '0';
                oe_pg <= '0';
                oe_es <= '1';
            end if;   

        else 
            write_en_pg <= '0';
            write_en_es <= '0';
            oe_es <= '0';
            oe_pg <= '0';
        end if;
    end process Combinacional;
end behavior;

