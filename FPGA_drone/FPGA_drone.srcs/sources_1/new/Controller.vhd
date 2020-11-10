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
    clk : std_logic;
    rst : std_logic;
    en : out std_logic;
    we : out std_logic_vector (3 downto 0);
    dout : out std_logic_vector (31 downto 0);
    addr : out std_logic_vector (31 downto 0);
    led : out std_logic_vector (3 downto 0)
    );
end Controller;

architecture Behavioral of Controller is

begin
    process(clk, rst)
        begin
        
        if (rst='1') then
            en <= '0';
        
        elsif (rising_edge(clk)) then
            addr <= x"40_00_00_04";
            we <= "0000";
            dout(7 downto 0) <= SPI_data;
            dout(31 downto 8) <= (others => '1');
            en <= '1';
        
        end if;
    end process;    
end Behavioral;
