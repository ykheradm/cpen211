LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY SegDecoder IS
Port ( D : in std_logic_vector( 3 downto 0 );
		 Y : out std_logic_vector( 6 downto 0 ) );
END SegDecoder;

ARCHITECTURE LogicFunction OF SegDecoder IS

BEGIN
	PROCESS (D)
		BEGIN
			CASE D IS
            WHEN "0000" => Y <= "1000000"; -- 0
            WHEN "0001" => Y <= "1111001"; -- 1
            WHEN "0010" => Y <= "0100100"; -- 2
            WHEN "0011" => Y <= "0110000"; -- 3
            WHEN "0100" => Y <= "0011001"; -- 4
            WHEN "0101" => Y <= "0010010"; -- 5
            WHEN "0110" => Y <= "0000010"; -- 6
            WHEN "0111" => Y <= "1111000"; -- 7
            WHEN "1000" => Y <= "0000000"; -- 8
            WHEN "1001" => Y <= "0010000"; -- 9
            WHEN "1010" => Y <= "0001000"; -- A
            WHEN "1011" => Y <= "0000011"; -- B
            WHEN "1100" => Y <= "0100111"; -- C
            WHEN "1101" => Y <= "0100001"; -- D
            WHEN "1110" => Y <= "0000110"; -- E
            WHEN "1111" => Y <= "0001110"; -- F
            WHEN OTHERS => Y <= "-------"; -- Undefined (dash on all segments)
        END CASE;
    END PROCESS;
END LogicFunction;