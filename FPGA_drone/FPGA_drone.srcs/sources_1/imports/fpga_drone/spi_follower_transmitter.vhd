library ieee;
use ieee.std_logic_1164.all;

entity spi_follower_transmitter is
generic (data_length : integer := 16);
Port (
    data : in std_logic_vector (data_length - 1 downto 0);
    sck  : in std_logic := '0';
    en : in std_logic;
    rst : in std_logic;
    read_en : out std_logic;
    sck_out : out std_logic;
    ss   : out std_logic;
    mosi : out std_logic);
end spi_follower_transmitter;

architecture Behavioral of spi_follower_transmitter is

    type state is (st_idle, st_sample_begin, st_transmit_begin);
    signal currentState : state;
    signal nextState : state;
    
    signal sck_en : std_logic := '0';
    signal index   : integer range 0 to data_length - 1 := data_length - 1;
    shared variable indexFlag    : std_logic := '1';
    signal data_out : std_logic_vector(15 downto 0); 
    signal setupFirstBit : std_logic := '0';
    
    ATTRIBUTE state_vector : string;
    ATTRIBUTE state_vector OF Behavioral : ARCHITECTURE IS "currentState" ;

    begin      
        process(sck, rst)
        begin
        
        if (rst = '1') then
            currentState <= st_idle;
        elsif (falling_edge(sck)) then
            currentState <= nextState;
            
            Case currentState IS
            when st_idle =>
                read_en <= '0';
                ss <= '1';
                sck_en <= '0';
                index <= data_length - 1;
            when st_sample_begin =>
                ss <= '0';
            when st_transmit_begin =>
                sck_en <= '1';
                mosi <= data(index);
                index <= index - 1;
                if (index = 8) then
                    read_en <= '1';
                end if;
                
            when others =>
                NULL;
            end case;
        end if;  
    end process;
        
    next_state : process (currentState, en, index)
        begin
        Case currentState IS
        when st_idle =>
            if (en = '1') then
                nextState <= st_sample_begin;
            else
                nextState <= st_idle;
            end if;
        when st_sample_begin =>
            nextState <= st_transmit_begin;
        when st_transmit_begin =>
            if (index = 0) then
                nextState <= st_idle;
            else
                nextState <= st_transmit_begin;
            end if;
        when others =>
            NULL;
        end case;
        
    end process next_state;     

    process (sck_en, sck)
        begin
            if (sck_en = '1') then
                sck_out <= sck;
            else
                sck_out <= '1';
            end if;            
    end process;    
 --        data_out <= data;
        
--            if rising_edge(sck) and indexFlag = '0' then
--                miso <= data_out(index);
--                setupFirstBit <= '1';
--                if (index = 0) then
--                    index <= data_length - 1;
--                else
--                    index <= index - 1;
--                end if;
--                if (setupFirstBit = '0') then
--                    miso <= '0';
--                    else
--                    data_out <= data;
--                end if;
--            end if;
        
end Behavioral;
