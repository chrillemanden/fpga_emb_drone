library ieee;
use ieee.std_logic_1164.all;

entity spi_follower_transmitter is
generic (data_length : integer := 16);
Port (
    data : in std_logic_vector (data_length - 1 downto 0);
    sck  : in std_logic := '0';
    ss   : in std_logic := '1';
    miso : out std_logic);
end spi_follower_transmitter;

architecture Behavioral of spi_follower_transmitter is

    signal index   : integer range 0 to data_length - 1 := data_length - 1;
    shared variable indexFlag    : std_logic := '1';
    signal data_out : std_logic_vector(15 downto 0); 
    signal setupFirstBit : std_logic := '0';

    begin      
        
        process(ss)
        begin
            if falling_edge(ss) then
            indexFlag := '0';
            end if;
        end process;
        
        process(sck)
        begin
        
        data_out <= data;
        
            if rising_edge(sck) and indexFlag = '0' then
                miso <= data_out(index);
                setupFirstBit <= '1';
                if (index = 0) then
                    index <= data_length - 1;
                else
                    index <= index - 1;
                end if;
                if (setupFirstBit = '0') then
                    miso <= '0';
                    else
                    data_out <= data;
                end if;
            end if;
        end process;
end Behavioral;
