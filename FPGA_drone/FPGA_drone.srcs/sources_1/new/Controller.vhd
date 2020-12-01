----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2020 10:55:40
-- Design Name: 
-- Module Name: Controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Controller is
    Port ( 
    SPI_data : in STD_LOGIC_VECTOR (7 downto 0);
    read_done : in std_logic;
    clk : std_logic;
    rst : std_logic;
    en : out std_logic;
    en_SPI : out std_logic;
    dout_SPI : out std_logic_vector (15 downto 0);
    we : out std_logic_vector (3 downto 0);
    dout : out std_logic_vector (31 downto 0);
    addr : out std_logic_vector (31 downto 0);
    led : out std_logic_vector (3 downto 0)
    );
end Controller;

architecture Behavioral of Controller is

type state is (st_start, st_read, st_wait_receive, st_save_bram);
signal currentState : state;
signal nextState : state;

--signal data_temp : std_logic_vector (data_length - 1 downto 0) := (others => '0');
--signal index   : integer range 0 to data_length - 1 := data_length - 1;

ATTRIBUTE state_vector : string;
ATTRIBUTE state_vector OF Behavioral : ARCHITECTURE IS "currentState";

signal en_SPI_int : std_logic := '0';
signal flag : std_logic := '0';

begin
    process(clk, rst)
        begin
        
        if (rst='1') then
            en <= '0';
            -- reset the state
            currentState <= st_start;
            
        elsif (rising_edge(clk)) then
            we <= "1111";
            en <= '1';
            currentState <= nextState;
            CASE currentState IS
            WHEN st_start =>
                --dout_SPI <= "1000000000000000";    
                --dout_SPI <= "0000011000000001";
                dout_SPI <= x"06_01";
            
            WHEN st_read =>
                --dout_SPI <= "1010110100000000";
                dout_SPI <= x"ad_00";
                
            WHEN st_wait_receive =>
                NULL;
                
            WHEN st_save_bram =>
                addr <= x"40_00_00_04";            
                dout(7 downto 0) <= SPI_data;
                dout(31 downto 8) <= (others => '1');
                
            WHEN others =>
                NULL;
                
            end CASE;
                   
        end if;
    end process;
    
    next_state : process (currentState, read_done)
        begin
        CASE currentState IS
        WHEN st_start =>
            if (read_done = '1') then
                nextState <= st_read;
            else 
                nextState <= st_start;
            end if;
            
        WHEN st_read =>
            nextState <= st_wait_receive;
            
        WHEN st_wait_receive =>
            if (read_done = '1') then
                nextState <= st_save_bram;
            else 
                nextState <= st_wait_receive;
            end if;
            
        WHEN st_save_bram =>
            nextState <= st_read;
            
        WHEN others =>
            NULL;
            
        end CASE;
    end process next_state;   
end Behavioral;
