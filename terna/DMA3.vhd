----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Mario de Miguel
-- Module Name: DMA - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use xil_defaultlib.PIC_pkg.ALL; --Revisar sintaxis

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_DMA is
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
      DMA_RQ_control : in std_logic;  --Entrada de control del DMA_RQ
      READY : out std_logic;

      TX_Data : out std_logic_vector(7 downto 0);
      Address : out std_logic_vector(7 downto 0);

      Databus : inout std_logic_vector(7 downto 0)
   );
end DMA;

architecture Behavioral of Control_DMA is
   type states is (idle, read_fifo, write_ram, load_transmitter);
   type array3 is array (0 to 2) of std_logic_vector(7 downto 0);

   signal ByteCounter : integer;
   signal current_state, next_state : states;
   signal RegData : array3;
   
begin
   combinacional : process(current_state, DMA_RQ_control, DMA_ACK, ByteCounter, TX_RDY) -- Lista de sensibilidad para luego
   begin
      case current_state is
         when idle =>
            --no dependen de las entradas
            Data_read <= '0';
            Valid_D <= '1';
            Write_en <= '0';
            
            if (DMA_RQ_control) = '1' then
               DMA_RQ <= '1'; --Hay que ver cómo se maneja cuándo el DMA pone 1 o 0 en DMA_RQ
            else
               DMA_RQ <= '0';
            end if;

            TX_Data <= (others => '0');
            Address <= (others => '0');

            DataBus <= (others => 'Z');

            --dependen de las entradas
            if (DMA_ACK = '1') then --Micro manda leer el RS232
               READY <= '0'; --?
               OE <= '0';
               next_state <= read_fifo;

            elsif(Send_comm = '1') then --Micro manda transmitir por el RS232
               READY <= '0';
               OE <= '1';
               next_state <= load_transmitter;

            else
               READY <= '1';
               OE <= '0';
               next_state <= idle;

            end if;

         when read_fifo =>
            --salidas que no dependen de las entradas
            Data_Read <= '1';
            Write_en <= '0';
            Valid_D <= '1';
            OE <= '0';
            DMA_RQ <= '1'; --Aquí sí, hay que mantener el require hasta terminar toda la tarea
            READY <= '0';

            TX_Data <= (others => '0');
            Address <= (others => '0');

            DataBus <= (others => 'Z');

            --transiciones
            if (ByteCounter = 2 and DMA_ACK = '1') then
               next_state <= write_ram;
            else 
               next_state <= read_fifo;

            end if;


         when write_ram =>
            --salidas que no dependen de las entradas
            Data_read <= '0';
            Valid_D <= '1';
            Write_en <= '1';
            OE <= '0';
            DMA_RQ <= '1';
            READY <= '0';
            
            TX_Data <= (others => '0');

           -- DataBus <= RegData(ByteCounter); --No hay solución RegData(3);

            --salidas que sí dependen
            case ByteCounter is 
               when 0 =>
                  Address <= DMA_BUFFER_MSB;
                  DataBus <= RegData(0);
                  next_state <= write_ram;

               when 1 => 
                  Address <= DMA_BUFFER_MID;
                  DataBus <= RegData(1);
                  next_state <= write_ram;

               when 2 =>
                  Address <= DMA_BUFFER_LSB;
                  DataBus <= RegData(2);
                  next_state <= write_ram; 

               when 3 =>
                  Address <= NEW_INST;
                  DataBus <= X"FF";
                  next_state <= idle;

            end case;
            

         when load_transmitter =>
            --salidas independientes de la entrada
            Data_Read <= '0';
            OE <= '1';
            DMA_RQ <= '0';
            READY <= '0';
            Write_en <= '0';

            --dependientes de las entradas
            if (TX_RDY = '1' and ByteCounter = 0) then
               Address <= DMA_TX_BUFFER_MSB; --Con el OE aquí la RAM asigna al DataBus
               Valid_D <= '0';
               TX_Data <= DataBus;
               next_state <= load_transmitter;
            
            elsif (TX_RDY = '1' and ByteCounter = 1) then
               Address <= DMA_TX_BUFFER_LSB;
               Valid_D <= '0';
               TX_Data <= DataBus;
               next_state <= idle;
            
            else
               Address <= (others => '0');   -- Transmisor no está ready para mandar, mantenemos todo a cero y nos quedamos aquí
               TX_Data <= (others => '0');
               Valid_D <= '1';
               next_state <= load_transmitter;

            end if;
      end case;
   end process combinacional;

   secuencial : process(Clk, Reset)
   begin
      if (Reset = '0') then
         current_state <= idle;
         ByteCounter <= (others => '0');
         RegData <= (others => X"00"); 

      elsif CLK'event and CLK = '1' then
         case current_state is
            when idle =>
               ByteCounter <= (others => '0'); --Pongo a cero todos los contadores y registros
               RegData <= (others => X"00"); 
   
            when read_fifo =>
               RegData(ByteCounter) <= RCVD_Data; --Por cada leída de la FIFO vamos borrando datos de la misma           
               if (ByteCounter < 2) then
                  ByteCounter <= ByteCounter + 1;
               else --Igual a 2
                  ByteCounter <= 0; --Reseteo el contador para el siguiente estado
               end if;

            when write_ram =>
               if (ByteCounter < 3) then
                  ByteCounter <= ByteCounter + 1;
               else
                  ByteCounter <= 0;
               end if;

            when load_transmitter =>
               if (ByteCounter < 2) then
                  ByteCounter <= ByteCounter + 1;
               else --Igual a 2
                  ByteCounter <= 0; --Reseteo el contador para el siguiente estado
                  end if;
         end case;

         current_state <= next_state; 
      end if;

   end process secuencial;

end Behavioral;
