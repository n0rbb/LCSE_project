----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Mario de Miguel
-- Module Name: DMA - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.PIC_pkg.ALL; --Revisar sintaxis

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DMA is
   Port ( 
      Reset : in std_logic;
      Clk : in std_logic;
      RX_Full : in std_logic;
      RX_Empty : in std_logic;
      ACK_out : in std_logic;
      TX_RDY : in std_logic;
      DMA_Ack : in std_logic; 
      Send_comm : in std_logic;

      RCVD_Data : in std_logic_vector(7 downto 0);

      Data_read : out std_logic;
      Valid_D : out std_logic;
      Write_en : out std_logic;
      OE : out std_logic;
      DMA_RQ : out std_logic;
      READY : out std_logic;

      TX_Data : out std_logic_vector(7 downto 0);
      Address : out std_logic_vector(7 downto 0);

      DataBus : inout std_logic_vector(7 downto 0)
   );
end DMA;

architecture Behavioral of DMA is
   type states is (idle, read_fifo, write_ram, end_write, load_transmitter, send_transmitter, end_transmitter, waiting);
  -- type array2 is array (0 to 1) of std_logic_vector(7 downto 0);

   signal ByteCounterRX, ByteCounterTX : integer;
   signal current_state, next_state : states;
   signal Databuffer : std_logic_vector(7 downto 0);
  -- signal RXFull : std_logic_vetor;

 --DON'T TOUCH
  attribute dont_touch : string;
  attribute keep : string;
  attribute dont_touch of current_state : signal is "true";
  attribute dont_touch of ByteCounterTX : signal is "true";
  attribute dont_touch of Send_comm : signal is "true";
  
  
  attribute keep of TX_RDY : signal is "true";
   
begin
   combinacional : process(current_state, RX_Empty, DMA_Ack, ByteCounterRX, ByteCounterTX, TX_RDY, ACK_out, RCVD_Data, DataBus, Send_comm) -- Lista de sensibilidad para luego
   begin
      case current_state is
         when idle => 
            Data_read <= '0';
            Valid_D <= '1';
            
            Write_en <= '0';
            
            OE <= '1';
            Address <= (others => '0');

            DMA_RQ <= '0';
            READY <= '1';

            DataBus <= (others => 'Z'); --Pongo en alta impedancia para que la RAM haga lo suyo mientras

            if (RX_Empty = '0') then  --Cuando llega algo a la fifo, se escribe a la fokin ram
               next_state <= read_fifo;
            elsif (Send_comm = '1') then
               READY <= '0';
               next_state <= waiting;
            else
               next_state <= idle;
            end if;

         -- TAREA DE ESCRITURA EN LA RAM
         when read_fifo => --Lectura del dato de la fifo (pongo el dato en RCVD_Data al disparar la fifo)
            Data_read <= '1';
            Valid_D <= '1';
            
            Write_en <= '0';
            OE <= '1';
            Address <= (others => '0');

            DMA_RQ <= '1';
            READY <= '1';

            DataBus <= (others => 'Z');
           
            if (DMA_Ack = '1') then --Solo cuando me han concedido los buses, leo y paso a la escritura. Si no, me quedo iterando.
               next_state <= write_ram;
            else
               next_state <= read_fifo; --Me parece que aquí no va a pasar nada hasta que cambie dma ack
            end if;

         when write_ram => --Pongo address, write_en y dato del registro en el databus
            Data_read <= '0';
            Valid_D <= '1';
            
            Write_en <= '1';
            OE <= '1';

            DMA_RQ <= '1';
            READY <= '1';
          
            DataBus <= RCVD_Data;

            if (ByteCounterRX = 0) then
               Address <= DMA_RX_BUFFER_MSB;
               next_state <= idle;

            elsif (ByteCounterRX = 1) then
               Address <= DMA_RX_BUFFER_MID;
               next_state <= idle; --Cambiar por idle 

            else
               Address <= DMA_RX_BUFFER_LSB;
               next_state <= end_write;

            end if;

         when end_write => --Escribe FF en la dirección NEW_INST y vuelve a idle
            Data_read <= '0';
            Valid_D <= '1';
         --   TX_Data <= (others => '0');
            
            Write_en <= '1';
            OE <= '1';
            Address <= NEW_INST;

            DMA_RQ <= '1';
            READY <= '1';
            
            DataBus <= X"FF";

            next_state <= idle;
            
         --FIN DE LA TAREA DE ESCRITURA EN RAM. TAREA DE LECTURA DE LA RAM.
         when waiting =>  --Estado para comprobar cómo está el transmisor y preparar la lectura
            Valid_D <= '1';
            OE <= '1';
            Data_Read <= '0'; --RX_empty; --Esto es una innovación de la ñapa de mandar 3 cosas. Hay que asegurar que desde waiting se pueda leer la fifo
            Write_en <= '0';
            DMA_RQ <= '0';
            READY <= '0';

            Address <= (others => '0');
            DataBus <= (others => 'Z');
            
            if (TX_RDY = '0' or ACK_out = '0') then
                next_state <= waiting;
            elsif (ByteCounterTX < 2) then
                next_state <= load_transmitter;
            else  --BCTX 1
                next_state <= end_transmitter;
            end if;
            
         
         when load_transmitter => --Ordena la lectura un dato de la memoria al registro de la DMA
            --Escojo ahora el address y disparo la lectura
            if (ByteCounterTX = 0) then
               Address <= DMA_TX_BUFFER_MSB;
            else 
               Address <= DMA_TX_BUFFER_LSB; --Esto pilla para 1 y 2
            end if;
           
            Valid_D <= '1';
            OE <= '0';
            DMA_RQ <= '0';
            READY <= '0';
            
            Data_Read <= '0';
            Write_en <= '0';
            
            DataBus <= (others => 'Z');
            next_state <= send_transmitter;
         
         when send_transmitter => --Comprueba si el transmisor está ready y manda los datos del registro 
            OE <= '1';
            Valid_D <= '0'; --Disparo el transmisor. 
            
            Data_Read <= '0';
            Write_en <= '0';
            DMA_RQ <= '0';
            READY <= '0';

            Address <= (others => '0');
            DataBus <= (others => 'Z');

        --    if (ByteCounterTX = 1) then --ByteCounterTX = 2
               --READY <= '1';
          --     next_state <= end_transmitter;
          --  else
               next_state <= waiting; --Incrementaré en el secuencial el contador
           -- end if;
            
          when end_transmitter =>
            Data_read <= '0';
            Valid_D <= '1';
            
            Write_en <= '0';
            
            OE <= '1';
            Address <= (others => '0');

            DMA_RQ <= '0';
            READY <= '1';

            DataBus <= (others => 'Z');
            if (send_comm = '0') then
                next_state <= idle;
            else
                next_state <= end_transmitter;
            end if;
                
      end case;
   end process combinacional;

   secuencial : process(Clk, Reset)
   begin
      if (Reset = '0') then
         ByteCounterTX <= 0;
         ByteCounterRX <= 0;
         TX_Data <= (others => '0');
        -- DataBuffer <= (others => 'Z');
         current_state <= idle;
        
      elsif CLK'event and CLK = '1' then
         case current_state is
            when idle =>
               TX_Data <= (others => '0');
             --  ByteCounterTX <= ByteCounterTX;
             --  ByteCounterRX <= ByteCounterRX;
             --  DataBuffer <= (others => 'Z');
               
            when read_fifo =>
               TX_Data <= (others => '0');
            --   ByteCounterTX <= ByteCounterTX;
            --   ByteCounterRX <= ByteCounterRX;
            --   DataBuffer <= (others => 'Z');

            when write_ram =>
             --  ByteCounterTX <= ByteCounterTX;
               ByteCounterRX <= ByteCounterRX + 1;
             --  DataBuffer <= (others => 'Z');

            when end_write =>
               TX_Data <= (others => '0');
              -- ByteCounterTX <= ByteCounterTX;
               ByteCounterRX <= 0;
              -- DataBuffer <= (others => 'Z');
            
            when waiting => --NO TOCAMOS EL DATO DEL TRANSMISOR
            --   ByteCounterTX <= ByteCounterTX;
            --   ByteCounterRX <= ByteCounterRX;
            
            when load_transmitter =>
               TX_Data <= DataBus;
            --   ByteCounterTX <= ByteCounterTX;
            --   ByteCounterRX <= ByteCounterRX;
                if (ByteCounterTX < 2) then   --If ByteCounterTX = 0
                   ByteCounterTX <= ByteCounterTX + 1;   --
                else
                   ByteCounterTX <= 0;
                end if;
               
            when send_transmitter => 
                
            -- TAMPOCO SE TOCA TX_DATA
               
               
            when end_transmitter =>
               TX_Data <= (others => '0');
               ByteCounterTX <= 0;
           --    ByteCounterTX <= ByteCounterTX;
           --    ByteCounterRX <= ByteCounterRX;
         end case;

         current_state <= next_state; 
      end if;

   end process secuencial;

end Behavioral;
