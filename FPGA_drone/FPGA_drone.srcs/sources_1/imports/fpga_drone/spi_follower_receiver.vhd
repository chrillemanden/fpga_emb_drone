--######################## Reciver #########################--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spi_follower_receiver is
generic (data_length : integer := 16);
    Port (
        sck      : in std_logic; --sck
        ss       : in std_logic; --ss
        mosi     : in std_logic; --mosi
        data     : out std_logic_vector (data_length - 1 downto 0)  := "0000000000000000";
        pwm_data     : out std_logic_vector (7 downto 0);
        data_15  : out std_logic);
end spi_follower_receiver;

architecture Behavioral of spi_follower_receiver is

type state_type is (RDY, RECEIVE);

signal state   : state_type := RDY;
signal data_temp : std_logic_vector (data_length - 1 downto 0);
signal index   : integer := data_length - 1;
shared variable indexFlag    : std_logic := '1';

begin
    process(ss)
        begin
        if falling_edge(ss) then
            indexFlag := '0';
        end if;
    end process;

    process(sck)
    begin
        if falling_edge(sck) then
        
            if (indexFlag = '0') then
                case state is
                when RDY =>
                    if ss = '0' then
                        state <= RECEIVE;
                        data_temp(index) <= mosi;
                        index <= index - 1;
                    else
                        data_temp <= "0000000000000000";
                        index <= data_length - 1;
                    end if;
                when RECEIVE =>
                    if (index = 0) then
                        data_temp <= "0000000000000000";
                        data <= data_temp;
                        data_15 <= data_temp(15);
                        pwm_data <= data_temp(7 downto 0);
                        index <= data_length - 1;
                        state <= RDY;
                    else 
                        index <= index - 1;
                    end if;
                    data_temp(index) <= mosi;
                end case;
            end if;
        end if;
    
    end process;
end Behavioral;
