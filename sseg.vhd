LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY sseg IS
    PORT(
                        bcd : In STD_logic_VECTOR(3 DOWNTO 0);
                        negativein : In STD_logic;
                leds,negativeleds: OUT STD_logic_VECTOR(1 TO 7));
END sseg;
ARCHITECTURE Behavior OF sseg IS
BEGIN
    PROCESS (bcd)
    BEGIN
    IF negativein = '0' THEN
        negativeleds <=  ("0000000");
    ELSE 
        negativeleds <=  ("0000001");
    END IF;
        CASE bcd IS
            WHEN "0000" => leds <= "1111110"; 
            WHEN "0001" => leds <= "0110000";
            WHEN "0010" => leds <= "1101101";
            WHEN "0011" => leds <= "1111001";
            WHEN "0100" => leds <= "0110011";
            WHEN "0101" => leds <= "1011011";
            WHEN "0110" => leds <= "1011111";
            WHEN "0111" => leds <= "1110000";
            WHEN "1000" => leds <= "1111111";
            WHEN "1001" => leds <= "1110011";
            WHEN OTHERS => leds <= "-------";
            END CASE;
END process;
END behavior;