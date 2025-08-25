LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY top_incr IS
Port ( KEY  : in std_logic_vector( 1 downto 0);
		 SW   : in std_logic_vector( 3 downto 0 );
		 HEX0 : out std_logic_vector( 6 downto 0 );
		 HEX1 : out std_logic_vector( 6 downto 0 ));
END top_incr;

architecture ti_func of top_incr is

component Fcount is
	port( clock : in std_logic;
			RESET: IN STD_LOGIC;
			D     : in std_logic_vector(3 downto 0);
			Y     : out unsigned(5 downto 0));
end component;

component DispHEX is
port( D       : in unsigned(5 downto 0);
      Y0 , Y1 : out std_logic_vector(6 downto 0));
end component;

signal f : UNSIGNED(5 downto 0);

begin 
 
	P1 : Fcount  port map (D => SW, CLOCK => KEY(0), Y => f, RESET => KEY(1));
	P2 : DispHex port map (D => f, Y0 => HEX0, Y1 => HEX1);
	
end ti_func;

	