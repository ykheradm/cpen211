LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all ;

entity Fcount is
	port( clock : in std_logic;
			RESET : IN STD_LOGIC;
			D     : in std_logic_vector(3 downto 0);
			Y     : out unsigned(5 downto 0));
end Fcount;

architecture Fcount_func of Fcount is

	signal s: unsigned(5 downto 0):= (5 downto 0 => '0');

begin
	
	PROCESS (clock, RESET)
		BEGIN
			if RESET = '0' then
				s <= "000000";
			elsif Rising_Edge(CLOCK) then
				s <= s + unsigned(D);
			else
				s <= s;
		end if;
	END PROCESS;
	
	Y <= s;

end Fcount_func;