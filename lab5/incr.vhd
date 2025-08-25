LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

ENTITY incr IS
PORT( clock : IN STD_LOGIC;
		f     : OUT unsigned(5 DOWNTO 0));
END incr;

architecture incr_func of incr is

	signal s: unsigned(5 downto 0):=(5 downto 0 => '0');

BEGIN

--	process(clk)
--	begin
--	if Rising_Edge(clock) then
--		s <= s + 1
--	end if;
--	end process;
	s <= s + 1 when Rising_Edge(clock) else s;
	f <= s;
	
end incr_func;