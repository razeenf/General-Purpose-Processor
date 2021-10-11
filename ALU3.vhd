LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ALU3 IS
	PORT( Clock			: IN std_logic;
			A,B 			: IN unsigned(7 DOWNTO 0);
			student_id	: IN unsigned(3 DOWNTO 0); 	
			OP				: IN unsigned(0 to 15);
			Neg			: OUT std_logic;
			R1				: OUT unsigned(0 to 3);
			R2				: OUT unsigned(0 to 3);
			FinalResult : OUT unsigned(0 to 3)); 				 
END ALU3;

ARCHITECTURE calculation OF ALU3 IS
	SIGNAL Reg1,Reg2 : unsigned(0 to 7):=(others=>'0');
	SIGNAL Result 	  : unsigned(0 to 3):=(others => '0');
	SIGNAL Reg3	     : unsigned(0 to 7);
	SIGNAL Reg4      : unsigned(0 to 3);

BEGIN
	Reg1 <= A; -- A = Reg1
	Reg2 <= B; -- B = Reg2
	Reg4 <= student_id; --student id = Reg4 
	PROCESS(Clock, OP)					
		BEGIN	
			IF(rising_edge(Clock)) THEN 		
				CASE OP IS 
					
					WHEN "1000000000000000" =>			 	-- 1
						IF(Reg2(0 to 3) = Reg4) THEN 		-- If matches
							Result <= "0001"; 				-- True
						ELSIF(Reg2(4 to 7) = Reg4) THEN  -- If matches
							Result <= "0001"; 				-- True
						ELSE 										-- If no matches
							Result <= "0000"; 				-- False
						END IF;
						
					WHEN "0100000000000000" => -- 2
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0010000000000000" => --3
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
						
					WHEN "0001000000000000" => --4
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0000100000000000" => --5
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0000010000000000" => --6
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0000001000000000" => --7
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0000000100000000" => --8
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN "0000000010000000" => --9
						IF (Reg2(0 to 3)= Reg4) THEN
							Result <= "0001";
						ELSIF(Reg2(4 to 7)= Reg4) THEN
							Result <= "0001";
						ELSE
							Result <= "0000";
						END IF;
					
					WHEN OTHERS =>
						Result <= "0000";
						
				END CASE;
			END IF;
		END PROCESS;
	FinalResult <= Result;
END calculation;