----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2020 10:02:07
-- Design Name: 
-- Module Name: Test - Behavioral
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


entity Test is
    Port ( a : in STD_LOGIC;
           b : out STD_LOGIC);
end Test;

architecture Behavioral of Test is

begin
    b <= a;


end Behavioral;
