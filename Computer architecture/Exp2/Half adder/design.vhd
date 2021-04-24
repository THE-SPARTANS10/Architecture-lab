-- Design Block
library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
port(
	x : in std_logic;
    y : in std_logic;
    sum : out std_logic;
    cout : out std_logic);
end half_adder;

architecture h_adder of half_adder is
begin
	sum <= x xor y;
    cout <= x and y;
end h_adder;