library ieee;
use ieee.std_logic_1164.all;

entity TestClock is 
	port(clk : in std_logic := '0';
	LED : out std_logic_vector(3 downto 0) := "0000");
end TestClock;

architecture TestClock_arch of TestClock is 

component GenClock
	generic(time_period : integer range 1 to 4);
	port(clk : in std_logic := '1';
	Clock : out std_logic := '1');
end component;

begin 
--
LD0: GenClock 
generic map(time_period => 1)
port map(clk => clk, Clock=>LED(0));

LD1: GenClock 
generic map(time_period => 2)
port map(clk => clk, Clock=>LED(1));

LD2: GenClock 
generic map(time_period => 3)
port map(clk => clk, Clock=>LED(2));

LD3: GenClock 
generic map(time_period => 4)
port map(clk => clk, Clock=>LED(3));

end TestClock_arch;
