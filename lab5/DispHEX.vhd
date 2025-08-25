LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all ;

entity DispHEX is
port( D       : in unsigned(5 downto 0);
      Y0 , Y1 : out std_logic_vector(6 downto 0));
end DispHEX;

architecture func of DispHEX is

component SegDecoder IS
Port ( D : in std_logic_vector( 3 downto 0 );
		 Y : out std_logic_vector( 6 downto 0 ) );	 
END component;

begin

	P1: SegDecoder port map 
						(D => std_logic_vector("00" & D(5 downto 4)), Y => Y1);
	P2: SegDecoder port map
						(D => std_logic_vector(D(3 downto 0)), Y => Y0);
	
end func;