    library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    
    use work.PIC_pkg.all;
    use work.RS232_test.all;

    entity TB_nexys_PIC is
    end TB_nexys_PIC;

    architecture Testbench of TB_nexys_PIC is

    component nexys_PIC is 
    port (
        
        -- Puertos PMOD de usuario (x4)
        --JA 				: inout STD_LOGIC_VECTOR(2 downto 1);    
        
        --Interfaz USB-RS232
        UART_TXD_IN     : in  STD_LOGIC;
        UART_RXD_OUT    : out  STD_LOGIC;
        UART_CTS        : in  STD_LOGIC;
        UART_RTS        : in  STD_LOGIC;

    ---------------------------------------------------------------------------------------
        -- Displays 7 segmentos (x8)
        CA                 : out  STD_LOGIC;    
        CB                 : out  STD_LOGIC;    
        CC                 : out  STD_LOGIC;    
        CD                 : out  STD_LOGIC;    
        CE                 : out  STD_LOGIC;    
        CF                 : out  STD_LOGIC;    
        CG                 : out  STD_LOGIC;    
        DP                 : out  STD_LOGIC;    
        AN                 : out  STD_LOGIC_VECTOR(7 downto 0);    

    -- Botones de usuario (x5)
    --    BTNC             : in  STD_LOGIC;    
        BTNU             : in  STD_LOGIC;    
    --    BTNL             : in  STD_LOGIC;    
    --    BTNR             : in  STD_LOGIC;    
    --    BTND             : in  STD_LOGIC;    

    -- Interruptores (x16) y LEDs (x16)
        SW                 : in   STD_LOGIC_VECTOR(15 downto 0);    
        LED                : out  STD_LOGIC_VECTOR(15 downto 0);   

    -- Reloj de la FPGA
        CLK100MHZ        : in   STD_LOGIC

        );    
    end component;

    -- Board signals used in the design 
        signal Clk100MHz : std_logic;
        signal Clk, reset : std_logic;
        signal SW, LED : std_logic_vector(15 downto 0);
        signal CA, CB, CC, CD, CE, CF, CG, DP : std_logic;
        signal AN : std_logic_vector(7 downto 0);
        signal BTNU : std_logic;
    -- signal JA : std_logic_vector(2 downto 1);

    -- Serial signals
        signal TD        : std_logic;   -- RS232 Transmission line
        signal RD        : std_logic;   -- RS232 Reception line
        
    -- signals to read/write directly to the RAM 
    --    signal i_address, i_data_in, i_data_out  : std_logic_vector(7 downto 0); 
    --    signal i_write_en, i_oe, i_send  : std_logic;  

    -- Time constants
    constant Tclk: time := 10 ns;   -- Clock Period (100 MHz)  
    constant Tclk2: time := 50 ns;  -- Clock Period (20 MHz)

    begin

    -- Instantiation of "Unit Under Test" 
    Unit_nexys_PIC :  nexys_PIC
        port map (
    --	JA => JA,

        CA => CA,
        CB => CB,
        CC => CC,
        CD => CD,
        CE => CE,
        CF => CF,
        CG => CG,
        DP => DP,
        AN => AN,

    --    BTNC => BTNC,   
        BTNU => BTNU,   
    --    BTNL => BTNL,   
    --    BTNR => BTNR,   
    --    BTND => BTND,   

        SW => SW,
        LED => LED,
        CLK100MHZ => CLK100MHZ );

    -----------------------------------------------------------------

    -- Reset generation (active low)
    reset <= '1', '0' after 75 ns, '1' after 175 ns;


    -- Clock generation (100 MHz)
    CLK100MHz <= Clk;

    p_clk : PROCESS
    BEGIN
        Clk <= '1';
        wait for Tclk/2;
        Clk <= '0';
        wait for Tclk/2;
    END PROCESS;


    ----------------------------------
    -- 1.Señales de petición de envío y recepción de datos (entrada) 
        BTNU <= not(reset);     -- UP button:      reset (active low) 
    --     BTNL <= i_write_en;     -- LEFT button:    RAM write 
    --     BTNR <= i_oe;      -- RIGHT button:   RAM read (active low)
    --     BTNC <= i_send;         -- CENTER button:  Send_comm 
    
    -- 2.Datos de entrada y salida
    --     SW (15 downto 8) <= i_address;    -- UPPER SW BYTE:  RAM address
    --     SW (7 downto 0) <= i_data_in;     -- LOWER SW BYTE:  RAM data for write
    --     i_data_out <= LED(7 downto 0);    -- LOWER LED BYTE: RAM data for read/write

    -- 3a.realimentación lineas TD => RD  (necesita un cable entre los pines 1 y 2 del pmodJA)
    --     TD <= JA(1);   -- OUTPUT PORT
    --     JA(2) <= RD;   -- INPUT PORT

    --     RD <= TD;      -- RS232 test loop  =>  *** THIS LINE CONNECTS THE 'TD' SERIAL OUTPUT TO THE 'RD' SERIAL INPUT ***  

    -- 3b.Conexión de las lineas TD y RD PC mediante el puerto microUSB (puerto serie RS232)
        TD <= UART_RXD_OUT;
        UART_TXD_IN <= RD;

    
    ----------------------------------------------------------

    -- 4.Generation of the input stimuli
    p_reset : PROCESS
    BEGIN
    RD <= '1';
    wait for 40 us;
    Transmit(TD, X"49");
    wait for 40 us;
    Transmit(TD, X"34");
    wait for 40 us;
    Transmit(TD, X"31");
    wait;
        
    END PROCESS;

    end Testbench;
