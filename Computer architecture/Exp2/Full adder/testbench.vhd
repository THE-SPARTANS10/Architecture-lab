-- Testbench Block
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench;

architecture add of testbench is
component full_adder is
port(
	x : in std_logic;
    y : in std_logic;
    z : in std_logic;
    sum : out std_logic;
    cout : out std_logic);
end component;

signal p,q,r,sum,carry: std_logic;

begin
	DUT : full_adder port map(p,q,r,sum,carry);
    
    process
    begin
    	p <= '0';
        q <= '0';
        r <= '0';
        wait for 1 ns;
        
        p <= '0';
        q <= '0';
        r <= '1';
        wait for 1 ns;
        
        p <= '0';
        q <= '1';
        r <= '0';
        wait for 1 ns;
        
        p <= '0';
        q <= '1';
        r <= '1';
        wait for 1 ns;
        
        p <= '1';
        q <= '0';
        r <= '0';
        wait for 1 ns;
        
        p <= '1';
        q <= '0';
        r <= '1';
        wait for 1 ns;
        
        p <= '1';
        q <= '1';
        r <= '0';
        wait for 1 ns;
        
        p <= '1';
        q <= '1';
        r <= '1';
        wait for 1 ns;
        
        p <= '0';
        q <= '0';
        r <= '0';
        wait for 1 ns;
        wait;
    
    end process;
end add;