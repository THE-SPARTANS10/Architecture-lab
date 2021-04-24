library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_gate is
     Port (a,b : in std_logic;
           q : out std_logic);
           
end xnor_gate;

architecture rtl of xnor_gate is
begin
	q <= (a and b) or (not(a) and not(b));
end rtl;