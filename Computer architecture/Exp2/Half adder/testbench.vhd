-- Testbench Block
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench;

architecture add of testbench is

component half_adder is
port(
	x : in std_logic;
    y : in std_logic;
    sum : out std_logic;
    cout : out std_logic);
end component;

signal a,b,sum,carry: std_logic;

begin 
	DUT : half_adder port map(a,b,sum,carry);
    
    process
    begin
    	a <= '0';
        b <= '0';
        wait for 1 ns;
        
        a <= '0';
        b <= '1';
        wait for 1 ns;
        
        a <= '1';
        b <= '0';
        wait for 1 ns;
        
        a <= '1';
        b <= '1';
        wait for 1 ns;
        
        a <= '0';
        b <= '0';
        wait for 1 ns;
        wait;
        
    end process;
    
end add;