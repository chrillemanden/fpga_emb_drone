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
use ieee.numeric_std.all;


entity Controller is
    generic (n_registers : integer := 12);
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

type state is ( st_start, 
                st_wait_who,
                st_read_who,
                st_error,
                st_wake_up,
                st_wake_wait,
                st_read, 
                st_wait_receive, 
                st_save_tmp,
                st_push_to_bram,
                st_incr_counter
                );
signal currentState : state;
signal nextState : state;

--signal data_temp : std_logic_vector (data_length - 1 downto 0) := (others => '0');
--signal index   : integer range 0 to data_length - 1 := data_length - 1;

ATTRIBUTE state_vector : string;
ATTRIBUTE state_vector OF Behavioral : ARCHITECTURE IS "currentState";

signal register_count   : integer range 0 to n_registers - 1    := 0;
signal IMU_addr         : unsigned (7 downto 0)                := x"AD";
signal tmp_data         : std_logic_vector (15 downto 0)        := (others => '0');
signal IMU_high_flag    : std_logic                             := '0';
signal ram_addr         : unsigned (31 downto 0)                := x"40_00_00_18";


begin
    process(clk, rst)
        begin
        
        if (rst='1') then
            en <= '0';
            -- reset the state
            currentState <= st_start;
            led <= (others => '0');
            
        elsif (rising_edge(clk)) then
            we <= "1111";
            en <= '1';
            currentState <= nextState;
            CASE currentState IS
            WHEN st_start =>
                --dout_SPI <= "1000000000000000";    
                --dout_SPI <= "0000011000000001";
                dout_SPI <= x"80_00";
                en_SPI <= '1';
                led <= (others => '0');
            
            WHEN st_wait_who =>
                --dout_SPI <= "1010110100000000";
                en_SPI <= '0';
                
            WHEN st_read_who =>
                NULL;
                
            WHEN st_error =>
                led <= (others => '1'); 
                
            WHEN st_wake_up =>
                dout_SPI <= x"06_01";
                en_SPI <= '1';
                
            WHEN st_wake_wait =>
                en_SPI <= '0';
                
            WHEN st_read =>
                dout_SPI(15 downto 8) <= std_logic_vector(IMU_addr + register_count); 
                dout_SPI(7 downto 0) <= (others => '0');
                IMU_high_flag <= not IMU_high_flag;
                en_SPI <= '1';
                
            WHEN st_wait_receive =>
                en_SPI <= '0';
                
            WHEN st_save_tmp =>
                if (IMU_high_flag = '1') then
                    tmp_data (15 downto 8) <= SPI_data;
                else
                    tmp_data (7 downto 0) <= SPI_data;
                end if;
                
            WHEN st_push_to_bram =>
                dout(15 downto 0) <= tmp_data;
                dout(31 downto 16) <= (others => '0');
                if (ram_addr = x"40_00_00_18") then
                    addr <= x"40_00_00_00";
                    ram_addr <= x"40_00_00_04";
                else
                    addr <= std_logic_vector(ram_addr);
                    ram_addr <= ram_addr + 4;
                end if;
                
            WHEN st_incr_counter =>
                if (register_count = n_registers - 1) then
                    register_count <= 0;
                else
                    register_count <= register_count + 1;
                end if;                    
                
            WHEN others =>
                NULL;
                
            end CASE;
                   
        end if;
    end process;
    
    next_state : process (currentState, read_done, SPI_data)
        begin
        CASE currentState IS
        WHEN st_start =>
            nextState <= st_wait_who;
        
        WHEN st_wait_who =>
            if (read_done = '1') then
                nextState <= st_read_who;
            else
                nextState <= st_wait_who;
            end if;
        
        WHEN st_read_who =>
            if (SPI_data = x"EA") then
                nextState <= st_wake_up;
            else
                nextState <= st_error;
            end if;
           
        WHEN st_error =>
            nextState <= st_error;
            
        WHEN st_wake_up =>
            nextState <= st_wake_wait;
            
        WHEN st_wake_wait =>
            if (read_done = '1') then
                nextState <= st_read;
            else
                nextState <= st_wake_wait;
            end if;
            
        WHEN st_read =>
            nextState <= st_wait_receive;
            
        WHEN st_wait_receive =>
            if (read_done = '1') then
                nextState <= st_save_tmp;
            else    
                nextState <= st_wait_receive;
            end if;
        
        WHEN st_save_tmp =>
            if (IMU_high_flag = '0') then
                nextState <= st_push_to_bram;
            else
                nextState <= st_incr_counter; 
            end if;
            
        WHEN st_push_to_bram =>
            nextState <= st_incr_counter;
            
        WHEN st_incr_counter =>
            nextState <= st_read;
            
        WHEN others =>
            NULL;
            
        end CASE;
    end process next_state;   
end Behavioral;
