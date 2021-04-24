-- Design Block
library IEEE;
use IEEE.std_logic_1164.all;


entity full_adder is
port(
	x : in std_logic;
    y : in std_logic;
    z : in std_logic;
    sum : out std_logic;
    cout : out std_logic);
end full_adder;

architecture f_adder of full_adder is
begin
	sum <= ((x xor y) xor z);
    cout <= ((x and y) or ((x xor y) and z));
end f_adder;