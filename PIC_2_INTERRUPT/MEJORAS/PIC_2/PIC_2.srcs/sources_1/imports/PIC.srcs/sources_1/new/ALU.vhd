----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2024 15:51:46
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.PIC_pkg.all;


entity ALU is
  port (
    Reset         : in std_logic; -- asynnchronous, active low 
    Clk           : in std_logic; -- Sys clock, 20MHz, rising_edge 
    ALU_op        : in alu_op; -- u-instructions from CPU 
    FlagZ         : out std_logic; -- Zero  
    FlagC         : out std_logic; -- Carry  
    FlagN         : out std_logic; -- Nibble 
    FlagE         : out std_logic; -- Error  
    Index_Reg     : out std_logic_vector(7 downto 0); -- Index register 
    Databus       : inout std_logic_vector(7 downto 0) -- System Data bus
  );
end ALU;

architecture Behavioral of ALU is
  signal A_next, B_next, ACC_next, Index_Reg_next       : std_logic_vector(7 downto 0);
  signal FlagZ_next, FlagC_next, FlagN_next, FlagE_next : std_logic;
  signal FlagZ_i, FlagC_i, FlagN_i, FlagE_i : std_logic;
  signal A, B, ACC, Index_Reg_i                         : std_logic_vector(7 downto 0);
  signal Sum       : std_logic_vector(8 downto 0);
  signal Sum4      : std_logic_vector(4 downto 0);
  constant ASCII0 : unsigned := to_unsigned(48, 6);
  
  -- Registros para guardar y recuperar el contexto
  signal A_r, B_r, ACC_r, Index_Reg_r : std_logic_vector(7 downto 0);
  signal FlagZ_r, FlagC_r, FlagN_r, FlagE_r : std_logic;
--  DON'T TOUCH
--  attribute dont_touch : string;
--  attribute dont_touch of ALU_op : signal is "true";
--  attribute dont_touch of ACC : signal is "true";
--  attribute dont_touch of FlagC_i : signal is "true";
--  attribute dont_touch of FlagN_i : signal is "true";
--  attribute dont_touch of FlagE_i : signal is "true";
begin
  combinacional : process (ALU_op, A, B, ACC, Index_Reg_i, Sum, Sum4, ACC_next, Databus, FlagZ_i, FlagC_i, FlagN_i, FlagE_i)
  begin
    --Default
    A_next         <= A;
    B_next         <= B;
    ACC_next       <= ACC;
    Index_Reg_next <= Index_Reg_i;
    FlagZ_next     <= FlagZ_i;
    FlagC_next     <= FlagC_i;
    FlagN_next     <= FlagN_i;
    FlagE_next     <= FlagE_i;
    Sum <= (others => '0');
    Sum4 <= (others => '0');
    Databus <= (others => 'Z');
    case ALU_op is
      when nop =>
      when op_lda =>
        A_next <= Databus;
      when op_ldb =>
        B_next <= Databus;
      when op_ldacc =>
        ACC_next <= Databus;
      when op_ldid =>
        Index_Reg_next <= Databus;
      when op_mvacc2id =>
        Index_Reg_next <= ACC;
      when op_mvacc2a =>
        A_next <= ACC;
      when op_mvacc2b =>
        B_next <= ACC;
      when op_add =>
        Sum4 <= std_logic_vector(unsigned('0'&A(3 downto 0)) + unsigned('0'&B(3 downto 0)));
        Sum <= std_logic_vector(unsigned('0'&A) + unsigned('0'&B));
        ACC_next <= Sum(7 downto 0);
        FlagC_next <= Sum(8);
        FlagN_next <= Sum4(4);
        if unsigned(Sum) = 0 then
            flagZ_next <= '1';
        end if;
      when op_sub =>
        Sum4 <= std_logic_vector(unsigned('0'&A(3 downto 0)) - unsigned('0'&B(3 downto 0)));
        Sum <= std_logic_vector(unsigned('0'&A) - unsigned('0'&B));
        ACC_next <= Sum(7 downto 0);
        FlagC_next <= Sum(8);
        FlagN_next <= Sum4(4);
        if unsigned(Sum) = 0 then
            flagZ_next <= '1';
        end if;
        when op_shiftl =>
            ACC_next <= ACC(6 downto 0) & '0';
        when op_shiftr =>
            ACC_next <= '0' & ACC(7 downto 1);
        when op_and =>
            ACC_next <= A and B;
        when op_or =>
            ACC_next <= A or B;
        when op_xor =>
            ACC_next <= A xor B;
        when op_cmpe =>
            if unsigned(A) = unsigned(B) then
                flagZ_next <= '1';
            else
                flagZ_next <= '0';
            end if;
        when op_cmpl =>
            if unsigned(A) < unsigned(B) then
                flagZ_next <= '1';
            else
                flagZ_next <= '0';
            end if;
        when op_cmpg =>
            if unsigned(A) > unsigned(B) then
                flagZ_next <= '1';
            else
                flagZ_next <= '0';
            end if;
        when op_ascii2bin =>
            ACC_next <= std_logic_vector(unsigned(A) - ASCII0);
            if(unsigned(ACC_next) > 9) then
                flagE_next <= '1';
            else
                flagE_next <= '0';
            end if;
        when op_bin2ascii =>
            ACC_next <= std_logic_vector(unsigned(A) + ASCII0);
            if((unsigned(ACC_next) > (ASCII0+9)) or (unsigned(ACC_next) < ASCII0)) then
                flagE_next <= '1';
            else
                flagE_next <= '0';
            end if;
        when op_oeacc =>
            Databus <= ACC;
            
        when op_savecontext =>
        when op_loadcontext =>
    end case;
  end process combinacional;
  

  secuencial : process (Clk, Reset, FlagZ_i, FlagC_i, FlagN_i, FlagE_i, Index_reg_i)
  begin
    if Reset = '0' then
      A           <= (others => '0');
      B           <= (others => '0');
      ACC         <= (others => '0');
      Index_Reg_i <= (others => '0');
      FlagZ_i     <= '0';
      FlagC_i     <= '0';
      FlagN_i     <= '0';
      FlagE_i     <= '0';
      
      -- Inicializo también los registros
      A_r           <= (others => '0');
      B_r           <= (others => '0');
      ACC_r         <= (others => '0');
      Index_Reg_r   <= (others => '0');
      FlagZ_r <= FlagZ_i;
      FlagC_r <= FlagC_i;
      FlagN_r <= FlagN_i;
      FlagE_r <= FlagE_i;
      
      
    elsif Clk'event and Clk = '1' then
      if ALU_op = op_loadcontext  then
        A <= A_r;
        B <= B_r;
        ACC <= ACC_r;
        Index_Reg_i <= Index_Reg_r;
        FlagZ_i     <= FlagZ_r;
        FlagC_i     <= FlagC_r;
        FlagN_i     <= FlagN_r;
        FlagE_i     <= FlagE_r;
        
      else
        A           <= A_next;
        B           <= B_next;
        ACC         <= ACC_next;
        Index_Reg_i <= Index_Reg_next;
        FlagZ_i     <= FlagZ_next;
        FlagC_i     <= FlagC_next;
        FlagN_i     <= FlagN_next;
        FlagE_i     <= FlagE_next;
      end if;
      
      if ALU_op = op_savecontext then
        A_r <= A;
        B_r <= B;
        ACC_r <= ACC;
        Index_Reg_r <= Index_Reg_i;
        FlagZ_r <= FlagZ_i;
        FlagC_r <= FlagC_i;
        FlagN_r <= FlagN_i;
        FlagE_r <= FlagE_i;
      end if;
      
    end if;
  end process secuencial;
  
  
  Index_Reg <= Index_Reg_i;
  FlagZ     <= FlagZ_i;
  FlagC     <= FlagC_i;
  FlagN     <= FlagN_i;
  FlagE     <= FlagE_i;
  
  
end Behavioral;

