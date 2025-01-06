--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.PIC_pkg.all;


entity ALU is
  port (
    Reset         : in std_logic; 
    Clk           : in std_logic; 
    ALU_op        : in alu_op; -- u-instructions 
    FlagZ         : out std_logic; 
    FlagC         : out std_logic; 
    FlagN         : out std_logic; 
    FlagE         : out std_logic; 
    Index_Reg     : out std_logic_vector(7 downto 0); 
    Databus       : inout std_logic_vector(7 downto 0) 
  );
end ALU;

architecture Behavioral of ALU is

  --Registro para guardas temporales
  signal A_temp, B_temp, ACC_temp, Index_Reg_temp       : std_logic_vector(7 downto 0);
  signal FlagZ_temp, FlagC_temp, FlagN_temp, FlagE_temp : std_logic;
  signal FlagZ_i, FlagC_i, FlagN_i, FlagE_i             : std_logic;
  --Señales de salida
  signal A, B, ACC, Index_Reg_i                         : std_logic_vector(7 downto 0);
  --Resultados
  signal Sum                                            : std_logic_vector(8 downto 0);
  signal Sum4bits                                       : std_logic_vector(4 downto 0);
  --Constante de conversión ASCII a binario
  constant ASCII0 : unsigned := to_unsigned(48, 6);
  -- Registros para guardar y recuperar el contexto
  signal A_r, B_r, ACC_r, Index_Reg_r : std_logic_vector(7 downto 0);
  signal FlagZ_r, FlagC_r, FlagN_r, FlagE_r : std_logic;

begin

  combinacional : process (ALU_op, A, B, ACC, Index_Reg_i, Sum, Sum4bits, ACC_temp, Databus, FlagZ_i, FlagC_i, FlagN_i, FlagE_i)
  begin
    --Valores por defecto
    A_temp         <= A;
    B_temp         <= B;
    ACC_temp       <= ACC;
    Index_Reg_temp <= Index_Reg_i;
    FlagZ_temp     <= FlagZ_i;
    FlagC_temp     <= FlagC_i;
    FlagN_temp     <= FlagN_i;
    FlagE_temp     <= FlagE_i;
    Sum <= (others => '0');
    Sum4bits <= (others => '0');
    Databus <= (others => 'Z');
    
    case ALU_op is
      when nop =>
      
      when op_lda =>
        A_temp <= Databus;
        
      when op_ldb =>
        B_temp <= Databus;
        
      when op_ldacc =>
        ACC_temp <= Databus;
        
      when op_ldid =>
        Index_Reg_temp <= Databus;
        
      when op_mvacc2id =>
        Index_Reg_temp <= ACC;
        
      when op_mvacc2a =>
        A_temp <= ACC;
        
      when op_mvacc2b =>
        B_temp <= ACC;
        
      when op_add =>
        --La suma se hace por separado para ver si hay carry en el primer byte.
        Sum4bits <= std_logic_vector(unsigned('0'&A(3 downto 0)) + unsigned('0'&B(3 downto 0)));
        Sum <= std_logic_vector(unsigned('0'&A) + unsigned('0'&B));
        ACC_temp <= Sum(7 downto 0);
        FlagC_temp <= Sum(8);
        FlagN_temp <= Sum4bits(4);
        if unsigned(Sum) = 0 then
            flagZ_temp <= '1';
        end if;
        
      when op_sub =>
        Sum4bits <= std_logic_vector(unsigned('0'&A(3 downto 0)) - unsigned('0'&B(3 downto 0)));
        Sum <= std_logic_vector(unsigned('0'&A) - unsigned('0'&B));
        ACC_temp <= Sum(7 downto 0);
        FlagC_temp <= Sum(8);
        FlagN_temp <= Sum4bits(4);
        if unsigned(Sum) = 0 then
            flagZ_temp <= '1';
        end if;
        
        when op_shiftl =>
            ACC_temp <= ACC(6 downto 0) & '0';
            
        when op_shiftr =>
            ACC_temp <= '0' & ACC(7 downto 1);
            
        when op_and =>
            ACC_temp <= A and B;
            
        when op_or =>
            ACC_temp <= A or B;
            
        when op_xor =>
            ACC_temp <= A xor B;
            
        when op_cmpe =>
            if unsigned(A) = unsigned(B) then
                flagZ_temp <= '1';
            else
                flagZ_temp <= '0';
            end if;
            
        when op_cmpl =>
            if unsigned(A) < unsigned(B) then
                flagZ_temp <= '1';
            else
                flagZ_temp <= '0';
            end if;
            
        when op_cmpg =>
            if unsigned(A) > unsigned(B) then
                flagZ_temp <= '1';
            else
                flagZ_temp <= '0';
            end if;
            
        when op_ascii2bin =>
            ACC_temp <= std_logic_vector(unsigned(A) - ASCII0);
            if(unsigned(ACC_temp) > 9) then
                flagE_temp <= '1';
            else
                flagE_temp <= '0';
            end if;
            
        when op_bin2ascii =>
            ACC_temp <= std_logic_vector(unsigned(A) + ASCII0);
            if((unsigned(ACC_temp) > (ASCII0+9)) or (unsigned(ACC_temp) < ASCII0)) then
                flagE_temp <= '1';
            else
                flagE_temp <= '0';
            end if;
            
        when op_oeacc =>
            Databus <= ACC;
            
        --Operaciones añadidas para el uso de interrupciones
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
        A           <= A_temp;
        B           <= B_temp;
        ACC         <= ACC_temp;
        Index_Reg_i <= Index_Reg_temp;
        FlagZ_i     <= FlagZ_temp;
        FlagC_i     <= FlagC_temp;
        FlagN_i     <= FlagN_temp;
        FlagE_i     <= FlagE_temp;
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

