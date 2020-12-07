----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2020 11:13:16 AM
-- Design Name: 
-- Module Name: tb_receiver_control_sim - Behavioral
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
--use IEEE.std_logic_arith.all;

--LIBRARY UNISIM;
--Use UNISIM.Vcomponents.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_receiver_control_sim is
--  Port ( );
end tb_receiver_control_sim;

architecture Behavioral of tb_receiver_control_sim is

component receiver_control_sim_wrapper is
  port (
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    en_0 : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    rst : in STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end component;

--variable add : INTEGER := 1800;
signal    clk : STD_LOGIC := '1';
signal    rst : STD_LOGIC := '1';
signal miso : STD_LOGIC := '0';
signal    mosi : STD_LOGIC;
signal    addr : STD_LOGIC_VECTOR ( 31 downto 0 );
signal    dout : STD_LOGIC_VECTOR ( 31 downto 0 );
signal   en_0 :STD_LOGIC;
signal    led : STD_LOGIC_VECTOR ( 3 downto 0 );
signal    we : STD_LOGIC_VECTOR ( 3 downto 0 );
signal    sck_out : STD_LOGIC;
signal    ss : STD_LOGIC;


begin
tb_receiver_control_sim: receiver_control_sim_wrapper
     port map (
      addr(31 downto 0) => addr(31 downto 0),
      clk => clk,
      dout(31 downto 0) => dout(31 downto 0),
      en_0 => en_0,
      led(3 downto 0) => led(3 downto 0),
      miso => miso,
      mosi => mosi,
      rst => rst,
      sck_out => sck_out,
      ss => ss,
      we(3 downto 0) => we(3 downto 0)
    );

--constant add_on : integer = 1900;
clk <= not clk after 100 ns;
rst <= '0' after 100 ns;
--read_en <= '1' after 100 ns;
miso <= '1' after 2300 ns, '0' after 2900 ns, '1' after 3100 ns, '0' after 3300 ns, '1' after 3500 ns, '0' after 3700 ns;


end Behavioral;
