LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.PIC_pkg.all;

entity PICtop is
  port (
    Reset       : in  std_logic;           -- Asynchronous, active low
    Clk         : in  std_logic;           -- System clock, 20 MHz, rising_edge

   -- i_write_en    : in  std_logic;                            -- Signals needed to access directly to the RAM (read/write)
   -- i_oe          : in  std_logic;                            -- Signals needed to access directly to the RAM (read/write)
   -- i_address     : in std_logic_vector(7 downto 0);          -- Signals needed to access directly to the RAM (read/write)
   -- databus       : inout std_logic_vector(7 downto 0);       -- Signals needed to access directly to the RAM (read/write)
   -- i_send        : in  std_logic;                            -- Indicates the DMA to send the RAM positions 4 y 5 (CPU response)

    RS232_RX    : in  std_logic;           -- RS232 RX line
    RS232_TX    : out std_logic;           -- RS232 TX line
    switches    : out std_logic_vector(7 downto 0);   -- Switch status bargraph
    Temp_L      : out std_logic_vector(6 downto 0);   -- Display value for TL
    Temp_H      : out std_logic_vector(6 downto 0);  -- Display value for TH
    
    RGB_R_DUTY       : out integer;
    RGB_G_DUTY       : out integer;
    
    CPU_Reset        : out std_logic;
    
    StopBit     : in std_logic); --Mejora RS232 - Escoger stopbit
end PICtop;


architecture behavior of PICtop is

  -----------------------------------------------------------------------
  --  RS232
  ------------------------------------------------------------------------
  
  component RS232_top
    port (
      Reset     : in  std_logic;
      Clk       : in  std_logic;
      
      Data_in   : in  std_logic_vector(7 downto 0);
      Valid_D   : in  std_logic;
      Ack_in    : out std_logic;
      TX_RDY    : out std_logic;
      
      TD        : out std_logic;
      RD        : in  std_logic;
      
      Data_out  : out std_logic_vector(7 downto 0);
      Data_read : in  std_logic;
      
      Full      : out std_logic;
      Empty     : out std_logic;
      
      StopBit   : in std_logic);
  end component;

  ------------------------------------------------------------------------
  -- RAM
  ------------------------------------------------------------------------
  
   component RAM_top
    port (
      Clk      : in    std_logic;
      Reset    : in    std_logic;
      
      write_en : in    std_logic;
      oe       : in    std_logic;
      
      address  : in    std_logic_vector(7 downto 0);
      databus  : inout std_logic_vector(7 downto 0);
      
      Switches : out std_logic_vector(7 downto 0);
      Temp_L   : out std_logic_vector(6 downto 0);
      Temp_H   : out std_logic_vector(6 downto 0));
  end component;
  
  ------------------------------------------------------------------------
  --  DMA
  ------------------------------------------------------------------------
  
   component DMA
    port ( Reset 		: in STD_LOGIC;
           Clk 	 		: in STD_LOGIC;
           
           RCVD_Data 	: in STD_LOGIC_VECTOR (7 downto 0);
           RX_Full 		: in STD_LOGIC;
           RX_Empty     : in STD_LOGIC;
           
           Data_Read 	: out STD_LOGIC;
           
           ACK_out 		: in STD_LOGIC;
           TX_RDY 		: in STD_LOGIC;
           
           Valid_D 		: out STD_LOGIC;
           TX_Data 		: out STD_LOGIC_VECTOR (7 downto 0);
           
           Address 		: out STD_LOGIC_VECTOR (7 downto 0);
           Databus 		: inout STD_LOGIC_VECTOR (7 downto 0);
           
           Write_en 	: out STD_LOGIC;
           OE 			: out STD_LOGIC;
           
           DMA_RQ 		: out STD_LOGIC;
           DMA_ACK 		: in STD_LOGIC;
           Send_comm 	: in STD_LOGIC;
           READY 		: out STD_LOGIC;	
           INT          : out STD_LOGIC;
           INT_ACK      : in STD_LOGIC; -- Esto me va a sacar las interrupciones
           
           RGB_R_DUTY        : out integer;
           RGB_G_DUTY        : out integer); 
  end component;
  
  component ROM is
   port (
        Instruction     : out std_logic_vector(11 downto 0);
        Program_counter : in std_logic_vector(11 downto 0));
   
   end component;
   
   component ALU is
    port ( Reset 		: in STD_LOGIC;
           Clk 	 		: in STD_LOGIC;
           
           Databus      : inout STD_LOGIC_VECTOR(7 downto 0);

           ALU_op       : in alu_op;
           Index_reg    : out STD_LOGIC_VECTOR(7 downto 0);
           FlagZ        : out STD_LOGIC;
           FlagC        : out STD_LOGIC;
           FlagN        : out STD_LOGIC;
           FlagE        : out STD_LOGIC);
                     
   end component;
           
   component CPU is
    port ( Reset 		: in STD_LOGIC;
           Clk 	 		: in STD_LOGIC;
           
           ROM_Data     : in STD_LOGIC_VECTOR(11 downto 0);
           ROM_Addr     : out STD_LOGIC_VECTOR(11 downto 0);
           
           RAM_Addr     : out STD_LOGIC_VECTOR(7 downto 0);
         --  RAM_CS       : out STD_LOGIC;
           RAM_Write    : out STD_LOGIC;
           RAM_OE       : out STD_LOGIC;
           
           Databus      : inout STD_LOGIC_VECTOR(7 downto 0);
           
           DMA_RQ       : in STD_LOGIC;
           DMA_ACK      : out STD_LOGIC;
           SEND_comm    : out STD_LOGIC;
           DMA_READY    : in STD_LOGIC;
           INT          : in STD_LOGIC;
           INT_ACK      : out STD_LOGIC;
           
           ALU_op       : out alu_op;
           Index_Reg    : in STD_LOGIC_VECTOR(7 downto 0);
           FlagZ        : in STD_LOGIC;
           FlagC        : in STD_LOGIC;
           FlagN        : in STD_LOGIC;
           FlagE        : in STD_LOGIC;
           
           CPU_Reset    : out STD_LOGIC);
           
   end component; 
    
 --   signal CPU_Reset, IN_Reset : STD_LOGIC;
 --   signal Reset_signal : STD_LOGIC;
  
    --RS232
    signal TX_Data      : STD_LOGIC_VECTOR (7 downto 0);    --Data_in
	signal RCVD_Data    : STD_LOGIC_VECTOR (7 downto 0);    --Data_out
	signal Valid_D      : STD_LOGIC;
	signal Ack_out      : STD_LOGIC;   --ACK_in
	signal TX_RDY       : STD_LOGIC;   --TX_RDY
	signal Data_Read    : STD_LOGIC;   --Data_Read
	signal Full         : STD_LOGIC;   -- RX_Full
	signal Empty        : STD_LOGIC;   --RX_Empty
	
--	signal StopBit      : STD_LOGIC;

    --DMA a RAM
	signal Write_en_DMA : STD_LOGIC;   --Write_en
	signal OE_DMA       : STD_LOGIC;   --OE
	signal Address_DMA  : STD_LOGIC_VECTOR(7 downto 0); --Address
	
	--DMA a CPU
    signal DMA_RQ       : STD_LOGIC;    --DMA_RQ  
    signal DMA_ACK      : STD_LOGIC;    --DMA_ACK
    signal Send_comm    : STD_LOGIC;    --SEND_Comm
    signal READY        : STD_LOGIC;    --DMA_READY
    
    --DMA: INT
    signal INT          : STD_LOGIC; --Señal de interrupción
    signal INT_ACK      : STD_LOGIC; --Handshake de la interrupción
    
    --DMA: RGB
 --   signal rgb_r_signal : STD_LOGIC;
 --   signal rgb_g_signal : STD_LOGIC;
    
    --CPU a RAM
    signal Address_CPU  : STD_LOGIC_VECTOR (7 downto 0); --RAM_Addr
    signal RAM_Write    : STD_LOGIC; --Write_en
    signal RAM_CS       : STD_LOGIC; --RAM_CS
    signal RAM_OE       : STD_LOGIC; --OE
    
    --ALU a CPU
  --  signal Alu_op       : STD_LOGIC_VECTOR(5 downto 0); --ALU_op
    signal Alu_op       : alu_op;
    signal Index_Reg    : STD_LOGIC_VECTOR(7 downto 0);    --Index_reg
    signal FlagZ        : STD_LOGIC;  --FlagZ
    signal FlagC        : STD_LOGIC;  --FlagC
    signal FlagN        : STD_LOGIC;  --FlagN
    signal FlagE        : STD_LOGIC;  --FlagE
     

    signal write_en_mem, oe_mem, i_address_req  : STD_LOGIC;
    
    signal write, oe : STD_LOGIC;
    signal address   : STD_LOGIC_VECTOR (7 downto 0); --HACER LOGICA DE CONTROL DE RAM
    
    --ROM A CPU
    signal INS_Addr     : STD_LOGIC_VECTOR(11 downto 0);
    signal INS_Bus      : STD_LOGIC_VECTOR(11 downto 0);
    
    signal databus      : STD_LOGIC_VECTOR(7 downto 0);
    
--    attribute dont_touch : string;
--    attribute dont_touch of Valid_D : signal is "true";
--    attribute dont_touch of TX_RDY : signal is "true";
--    attribute dont_touch of Send_comm : signal is "true";
--    attribute dont_touch of DMA_ACK : signal is "true";
--    attribute dont_touch of DMA_RQ : signal is "true";
--    attribute dont_touch of Alu_op : signal is "true";
--    attribute dont_touch of databus : signal is "true";
        
begin  -- behavior

  RS232_PHY: RS232_top
    port map (
        Reset     => Reset,
        Clk       => Clk,
        
        Data_in   => TX_Data,
        Valid_D   => Valid_D,
        Ack_in    => Ack_out,
        TX_RDY    => TX_RDY,
        
        TD        => RS232_TX,
        RD        => RS232_RX,
        
        Data_out  => RCVD_Data,
        Data_read => Data_read,
        Full      => Full,
        Empty     => Empty,
        StopBit   => StopBit);

  RAM_PHY: RAM_top
    port map (
        Clk      => Clk,
        Reset    => Reset,
        
        write_en => write,
        oe       => oe, --OE activo alto HACER LOGICA PARA CONTROL ENTRE OE DE DMA Y OE DE CPU
        address  => address,  --HACER LOGICA PARA CONTROL ENTRE adrress DE DMA Y adress DE CPU
        
        databus  => databus,
        
        Switches => switches,
        Temp_L   => Temp_L,
        Temp_H   => Temp_H );
        
   DMA_PHY: DMA
    port map (
        Clk       => Clk,
        Reset     => Reset,
        
        RCVD_Data => RCVD_Data,
        RX_Full   => Full,
        RX_Empty  => Empty,
        Data_Read => Data_Read,
        ACK_out   => ACK_out,
        TX_RDY    => TX_RDY,
        Valid_D   => Valid_D,
        TX_Data   => TX_Data,
        
        Address   => Address_DMA,
        Databus   => databus,
        
        Write_en  => Write_en_DMA,
        OE        => OE_DMA,
        
        DMA_RQ    => DMA_RQ,
        DMA_ACK   => DMA_ACK,
        Send_comm => Send_comm,
        READY => READY,
        INT => INT, 
        INT_ACK => INT_ACK, 
        
        RGB_R_DUTY => RGB_R_DUTY,
        RGB_G_DUTY => RGB_G_DUTY);
      
    ROM_PHY: ROM
     port map(
        Instruction => INS_Bus,
        Program_counter => INS_Addr);

    ALU_PHY: ALU
     port map(
        Clk       => Clk,
        Reset     => Reset,
        
        ALU_op    => Alu_op,
        Databus   => databus,
        Index_reg => Index_Reg,
        FlagZ     => FlagZ,
        FlagC     => FlagC,
        FlagN     => FlagN,
        FlagE     => FlagE);
         
    CPU_PHY: CPU
     port map(
        Clk       => Clk,
        Reset     => Reset,
        
        ROM_Data  => INS_Bus,
        ROM_Addr  => INS_Addr,
        
        RAM_Addr  => Address_CPU,
       -- RAM_CS    => RAM_CS,
        RAM_Write => RAM_Write,
        RAM_OE    => RAM_OE,
       
        Databus   => databus,
        
        DMA_RQ    => DMA_RQ,
        DMA_ACK   => DMA_ACK,
        SEND_comm => SEND_Comm,
        DMA_READY => READY,
        INT => INT,
        INT_ACK => INT_ACK,
        
        ALU_op    => Alu_op,
        Index_Reg => Index_Reg,
        FlagZ     => FlagZ,
        FlagC     => FlagC,
        FlagN     => FlagN,
        FlagE     => FlagE,
        
        CPU_Reset => CPU_Reset);
        

------ (1) SIGNALS USED TO GIVE CONTROL OF THE DATABUS TO THE DMA WHEN NEEDED 
--    process(clk)
--    begin
--      if clk'event and clk='1' then
--        IN_Reset <= Reset;
--        Reset_signal <= IN_Reset and CPU_Reset;
--      end if;
--    end process;  
    
------ Lógica para acceder a Address, OE y write_en de la RAM a partir de CPU o DMA
    process(DMA_ACK, Send_comm, Address_DMA, Address_CPU, RAM_OE, RAM_WRITE, OE_DMA, Write_en_DMA)
    begin
    if DMA_ACK = '1' or Send_comm = '1' then --Si hemos concedido los buses
        address <= Address_DMA;
        oe <= OE_DMA;
        write <= Write_en_DMA;
    else                                     --Si no hemos concedido los buses
        address <= Address_CPU;
        oe <= RAM_OE;
        write <= RAM_Write;
    end if;
   end process;
end behavior;
