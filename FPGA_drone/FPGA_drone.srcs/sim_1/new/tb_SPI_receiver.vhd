----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2020 09:22:55
-- Design Name: 
-- Module Name: tb_SPI_receiver - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_SPI_receiver is
--  Port ( );
end tb_SPI_receiver;

architecture Behavioral of tb_SPI_receiver is

component spi_follower_receiver
Port (
        sck      : in std_logic; --sck
        rst      : in std_logic;
        read_en  : in std_logic; --receive enable
        miso     : in std_logic;
        read_done : out std_logic;
        data     : out std_logic_vector (7 downto 0));
    end component;

signal sck      : std_logic := '1';
signal rst      : std_logic := '1';
signal read_en  : std_logic := '0';
signal miso     : std_logic := '0';
signal read_done : std_logic;
signal data     : std_logic_vector (7 downto 0);
begin

tb_SPI_receiver : spi_follower_receiver
Port map(
    sck => sck,
    rst => rst,
    read_en => read_en,
    miso => miso,
    read_done => read_done,
    data => data
);

sck <= not sck after 100 ns;
rst <= '0' after 100 ns;
read_en <= '1' after 100 ns;
miso <= '1' after 300 ns, '0' after 900 ns, '1' after 1100 ns, '0' after 1300 ns, '1' after 1500 ns, '0' after 1700 ns;
end Behavioral;
