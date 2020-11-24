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
signal en_SPI_int : std_logic := '0';
signal flag : std_logic := '0';

begin
    process(clk, rst)
        begin
        
        if (rst='1') then
            en <= '0';
        
        elsif (rising_edge(clk)) then
            addr <= x"40_00_00_04";
            we <= "0001";
            dout(7 downto 0) <= SPI_data;
            dout(31 downto 8) <= (others => '1');
            en <= '1';
            dout_SPI <= "1000000000000000";
            led <= SPI_data( 3 downto 0);
            if (read_done = '1') then
                dout(7 downto 0) <= SPI_data;
                dout(31 downto 8) <= (others => '0');
            end if;
        
        end if;
    end process;    
end Behavioral;
