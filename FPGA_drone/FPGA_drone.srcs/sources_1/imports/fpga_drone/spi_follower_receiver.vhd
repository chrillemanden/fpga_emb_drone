--######################## Reciver #########################--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spi_follower_receiver is
generic (data_length : integer := 24);
    Port (
        sck      : in std_logic; --sck
        rst      : in std_logic;
        read_en       : in std_logic; --receive enable
        miso     : in std_logic;
        data     : out std_logic_vector (data_length - 1 downto 0)  := "0000000000000000");
end spi_follower_receiver;

architecture Behavioral of spi_follower_receiver is

    type state is (st_idle, st_sample_begin, st_receive_done);
    signal currentState : state;
    signal nextState : state;
    
    signal data_temp : std_logic_vector (data_length - 1 downto 0);
    signal index   : integer range 0 to data_length - 1 := data_length - 1;
    
    ATTRIBUTE state_vector : string;
    ATTRIBUTE state_vector OF Behavioral : ARCHITECTURE IS "currentState";

begin

    process(sck, rst)
        begin
        
        if (rst = '1') then
            currentState <= st_idle;
        elsif (falling_edge(sck)) then
            currentState <= nextState;
            Case currentState IS
            when st_idle =>
                
            when st_sample_begin =>

            when st_receive_done =>
                
            when others =>
                NULL;
            end case;
        end if;  
    end process;
    
    next_state : process (currentState, read_en)
        begin
        Case currentState IS
        when st_idle =>
            if (read_en = '1') then
                nextState <= st_sample_begin;
            else
                nextState <= st_sample_begin;
            end if;
        when st_sample_begin =>
            if (index = 0) then
                nextState <= st_receive_done;
            else
                nextState <= st_sample_begin;
            end if;
        when st_receive_done =>
            nextState <= st_idle;
        when others =>
            NULL;
        end case;
        
    end process next_state;
    
end Behavioral;
