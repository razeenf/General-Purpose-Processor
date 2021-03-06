LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
	PORT (bcd  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			leds : OUT STD_LOGIC_VECTOR(0 TO 6));
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
	PROCESS (bcd)
		BEGIN
			CASE bcd IS
			WHEN "0001" => leds <= "0111011";
			WHEN "0010" => leds <= "0010101";
			WHEN OTHERS => leds <= "0000000";
			END CASE;
		END PROCESS;
END Behavior;