------------------------------------------------------
-- Autor: Juan Antonio L�pez Mart�n
-- Departamento de Ingenier�a Electr�nica 
------------------------------------------------------ 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity nexys_PIC is
  port (
    
	-- Puertos PMOD de usuario (x4)
	--JA 				: inout STD_LOGIC_VECTOR(2 downto 1);    
	
    --Interfaz USB-RS232
    UART_TXD_IN     : in  STD_LOGIC;
    UART_RXD_OUT    : out  STD_LOGIC;
  --  UART_CTS        : in  STD_LOGIC;
  --  UART_RTS        : in  STD_LOGIC;

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

-- Interruptores (x16) y LEDs
    SW                 : in   STD_LOGIC_VECTOR(15 downto 0);    
    LED                : out  STD_LOGIC_VECTOR(15 downto 0);   

-- LED RGB
    LED16_R              : out STD_LOGIC;
    LED16_G              : out STD_LOGIC;

-- Reloj de la FPGA
    CLK100MHZ        : in   STD_LOGIC

	 );  
end nexys_PIC;

architecture a_behavior of nexys_PIC is

-- declaraci�n de componentes 
    component clk_wiz_0
        port (
          reset     : in  std_logic;
          clk_in1   : in  std_logic;
          clk_out1  : out  std_logic;
          locked    : out std_logic);
    end component;

    component PICtop is
      port (
        Reset       : in  std_logic;           -- Asynchronous, active low
        Clk         : in  std_logic;           -- System clock, 20 MHz, rising_edge
    
--        i_write_en    : in  std_logic;                            -- Signals needed to access directly to the RAM (read/write)
--        i_oe          : in  std_logic;                            -- Signals needed to access directly to the RAM (read/write)
--        i_address     : in std_logic_vector(7 downto 0);          -- Signals needed to access directly to the RAM (read/write)
--        databus       : inout std_logic_vector(7 downto 0);       -- Signals needed to access directly to the RAM (read/write)
 --       i_send        : in  std_logic;                            -- Indicates the DMA to send the RAM positions 4 y 5 (CPU response)
    
        RS232_RX    : in  std_logic;           -- RS232 RX line
        RS232_TX    : out std_logic;           -- RS232 TX line
        switches    : out std_logic_vector(7 downto 0);   -- Switch status bargraph
        Temp_L      : out std_logic_vector(6 downto 0);   -- Display value for TL
        Temp_H      : out std_logic_vector(6 downto 0);  
        Temp_F_L      : out std_logic_vector(6 downto 0);   
        Temp_F_H      : out std_logic_vector(6 downto 0);
        
        RGB_R_DUTY       : out integer;
        RGB_G_DUTY       : out integer;
        
        CPU_Reset   : out std_logic;
      
        StopBit     : in std_logic);
      end component;


-- declaraci�n de se�ales 
    signal reset, reset_p : std_logic;
    signal clk : std_logic;
    signal contador : unsigned(31 downto 0); 
    
    --signal flag : std_logic;
    signal CPU_Reset_signal, CPU_Reset_flag : std_logic;


-- signals for UUT (PICtop) 
    signal switches  : std_logic_vector(7 downto 0); 
    signal RD, TD  : std_logic;  

-- signals for RGB PWM    
    signal rgb_counter : integer;
    signal rgb_r_duty, rgb_g_duty: integer;
    
--signals for them displays
    signal measure : std_logic_vector(6 downto 0); 
    
    signal degree : std_logic_vector(6 downto 0);   
    signal Temp_H, Temp_L  : std_logic_vector(6 downto 0);
    signal Temp_H_f, Temp_L_f : std_logic_vector(6 downto 0);
    signal temp_H_picked, temp_L_picked : std_logic_vector(6 downto 0);
    signal selectdisp : std_logic_vector(1 downto 0);
    signal ToggleFC : std_logic;
    
    signal StopBit : std_logic;
    
-- signals to access directly to the RAM  
--    signal i_address, i_data_in, i_data_out, databus  : std_logic_vector(7 downto 0); 
--    signal i_write_en, i_oe : std_logic;  
--    signal i_send, i_send_r, i_send_pulse  : std_logic;  

begin

-- 1.Botones (y switches del 9 al 16)
     reset <= not(BTNU) and CPU_Reset_signal;      -- Button UP     => Reset (active low) + Comando RST
--     i_write_en <= BTNL;      -- Button LEFT   => Write RAM position 
--     i_oe <= BTNR;       -- Button RIGHT  => Read RAM position
--     i_send <= BTNC;          -- Button CENTER => Send RAM positions 4-5
     StopBit <= SW(15); --Switch de la izquierda para escoger el bit
     ToggleFC <= SW(14);
     
     
-- 2.Datos de entrada y salida
     LED(15 downto 8) <= switches;
--     LED(7 downto 0) <= i_data_out;    -- Lower LED byte => Show the data written to/read from the RAM 
--     i_data_in <= SW(7 downto 0);      -- Lower  SW byte => Data to be written to the RAM
--     i_address <= SW(15 downto 8);     -- Upper  SW byte => RAM read/write address 
     LED16_R <= '1' when rgb_counter < rgb_r_duty else '0';
     LED16_G <= '1' when rgb_counter < rgb_g_duty else '0';
-- 3a.Realimentaci�n lineas TD => RD  (necesita un cable entre los pines 1 y 2 del pmodJA)
--     JA(1) <= TD;   -- OUTPUT PORT     
--    JA(2) <= 'Z';   -- OUTPUT PORT
--     RD <= JA(2);   -- INPUT PORT

-- 3b.conexi�n de las lineas TD y RD PC mediante el puerto microUSB (puerto serie RS232)
     UART_RXD_OUT <= TD;
     RD <= UART_TXD_IN;

-- 4.Displays: Muestra el valor de la temperatura en los dos displays inferiores, y anula los otros 6. 
    selectdisp <= contador(16) & contador(15);
    degree <= "1100011";
    measure <= "0111001" when ToggleFC = '0' else "1110001";
    temp_H_picked <= Temp_H when ToggleFC = '0' else Temp_H_f;
    temp_L_picked <= Temp_L when ToggleFC = '0' else Temp_L_f;
    
    CA <= not(temp_H_picked(0)) when selectdisp = "10" else 
          not(temp_L_picked(0)) when selectdisp = "00" else
          not(degree(0)) when selectdisp = "01" else
          not(measure(0)) when selectdisp = "11";
    CB <= not(temp_H_picked(1)) when selectdisp = "10" else 
          not(temp_L_picked(1)) when selectdisp = "00" else
          not(degree(1)) when selectdisp = "01" else
          not(measure(1)) when selectdisp = "11";
    CC <= not(temp_H_picked(2)) when selectdisp = "10" else 
          not(temp_L_picked(2)) when selectdisp = "00" else
          not(degree(2)) when selectdisp = "01" else
          not(measure(2)) when selectdisp = "11";
    CD <= not(temp_H_picked(3)) when selectdisp = "10" else 
          not(temp_L_picked(3)) when selectdisp = "00" else
          not(degree(3)) when selectdisp = "01" else
          not(measure(3)) when selectdisp = "11";
    CE <= not(temp_H_picked(4)) when selectdisp = "10" else 
          not(temp_L_picked(4)) when selectdisp = "00" else
          not(degree(4)) when selectdisp = "01" else
          not(measure(4)) when selectdisp = "11";
    CF <= not(temp_H_picked(5)) when selectdisp = "10" else 
          not(temp_L_picked(5)) when selectdisp = "00" else
          not(degree(5)) when selectdisp = "01" else
          not(measure(5)) when selectdisp = "11";
    CG <= not(temp_H_picked(6)) when selectdisp = "10" else 
          not(temp_L_picked(6)) when selectdisp = "00" else
          not(degree(6)) when selectdisp = "01" else
          not(measure(6)) when selectdisp = "11";
    
    DP <= '0' when (selectdisp = "00") else '1';
    AN <= "1111" & 
          not(selectdisp(1) and not(selectdisp(0))) & 
          (selectdisp(1) or selectdisp(0)) & 
          not(not(selectdisp(1)) and selectdisp(0)) & 
          not(selectdisp(1) and selectdisp(0));


-- 5.Instanciaci�n de los componentes 
  reset_p <= not reset;
    clk_20MHz : clk_wiz_0 PORT MAP(
        reset => reset_p,
        clk_in1 => CLK100MHz,
        clk_out1 => clk,
        locked => open);

    UUT : PICtop PORT MAP(
        Reset      => reset, 
        Clk        => clk,
--        i_write_en => i_write_en,
--        i_oe       => i_oe,
--        databus    => databus,
--        i_address  => i_address,
--        i_send     => i_send_pulse, 
        RS232_RX   => RD,
        RS232_TX   => TD,
        switches   => switches,
        Temp_L     => Temp_L,
        Temp_H     => Temp_H, 
        Temp_F_L     => Temp_L_f,
        Temp_F_H     => Temp_H_f, 
        
        RGB_R_DUTY      => rgb_r_duty,
        RGB_G_DUTY      => rgb_g_duty,
        
        CPU_Reset       => CPU_Reset_flag,
        
        StopBit => StopBit);


-- 6.Procesos adicionales 
    -- Contador para hacer el barrido de los datos en los displays. 
    -- Incluyo aquí la gestión de la señal de reset por comando.
    process(reset, clk)
    begin
      if reset='0' then
--	    i_send_r <= '0';
        contador <= (others => '0');
        CPU_Reset_signal <= '1';
        --flag <= '0';
      elsif clk'event and clk='1' then
--	      i_send_r <= i_send;
          contador <= contador + 1;
          if contador >= 100000000 then
            contador <= (others => '0');
            --flag <= not flag;
          end if; 
          CPU_Reset_signal <= CPU_Reset_flag;     
          end if;
    end process;      
--	i_send_pulse <= i_send and not(i_send_r);
             
			  
--7.Otros procesos
--Pongo por ejemplo, freq pwm a 10 kHz (periodo de 2000)
   contador_rgb : process(reset, clk) 
   begin
      if reset='0' then	  
        rgb_counter <= 0;
        
      elsif clk'event and clk='1' then  
          rgb_counter <= rgb_counter + 1;
          if rgb_counter >= 2000 then
            rgb_counter <= 0;
          end if; 
         
      end if;
   end process contador_rgb;
   
   
    -- Entrega (write) / Captura y almacena (read) los datos del databus
--    process(reset, clk)
--    begin
--      if reset='0' then
--        i_data_out <= (others => '0');
--      elsif clk'event and clk='1' then
--          if (i_oe = '1') or (i_write_en='1') then
--            i_data_out <= databus;
--          end if;
--     end if;
--    end process;  
--    databus <= i_data_in when (i_write_en='1' and i_oe='0') else (others => 'Z');
    
end a_behavior;
