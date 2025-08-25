LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Fcount_tb is
END Fcount_tb;

ARCHITECTURE Behaviour of Fcount_tb is
	COMPONENT Fcount IS --the component we would like to test
	port( clock : in std_logic;
			D     : in UNSIGNED(3 downto 0);
			Y     : out UNSIGNED(5 downto 0));
	END COMPONENT;

	--for clock generation
	constant clk_hz : integer := 50e6; --f = 50 Mhz clock
	constant clk_period : time := 1 sec / clk_hz; --1/f = T = 20 ns period

	--DUT signals required
	SIGNAL tb_Y : UNSIGNED(5 downto 0);
	SIGNAL tb_D : UNSIGNED(3 downto 0);
	SIGNAL tb_clock : std_logic := '1'; --DUT's clock input. Assign the clock a starting value for Modelsim
	
BEGIN
	
	DUT : Fcount PORT MAP(clock => tb_clock, D => tb_D, Y => tb_Y);

	--Simple assignment statement that inverts the clock ever clk_period/2 to create 
	--a constant clock signal for our simulations
	tb_clock <= NOT tb_clock after clk_period / 2;

END Behaviour;

