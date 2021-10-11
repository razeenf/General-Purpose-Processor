library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU1 is
	port	(Clock	:in std_logic;
	A, B	: in unsigned(7 downto 0);
	student_id	:in unsigned(3 downto 0);
	OP: in unsigned (15 downto 0);
	Neg	: out std_logic;
	R1	: out unsigned(3 downto 0);
	R2	: out unsigned(3 downto 0));
end ALU1;

Architecture calculation of ALU1 is 
		Signal Reg1, Reg2, Result	: unsigned(7 downto 0):=(Others=>'0');
		Signal Reg4	: unsigned(0 to 7);
		
Begin
Reg1 <= A;
Reg2 <= B;
Process (Clock, OP)
Begin	
	if(rising_edge(Clock))then 
		case op is
				when "0000000000000001" =>
				--Do addition for Reg1 and Reg2
				Result <= (Reg1 + Reg2);
				Neg <= '0';
				
				when "0000000000000010" =>
				--Do Subtraction
				--"Neg" bit set if required
				if Reg1>Reg2 then
					Result <= (Reg1 - Reg2);
					Neg <= '0';
				else
					Result <= (Reg2 - Reg1);
					Neg <= '1';
				end if;	
				
				when "0000000000000100" =>
				--Do Inverse
				  Result <= (NOT Reg1);
				  Neg <= '0';
				  
				when "0000000000001000" =>
				--Do Boolean NAND
				  Result <= (Reg1 NAND Reg2);
				  Neg <= '0';
				  
				when "0000000000010000" =>
				--Do Boolean NOR
				  Result <= (Reg1 NOR Reg2);
				  Neg <= '0';	
				  
				when "0000000000100000" =>
				--Do Boolean AND
				  Result <= (Reg1 AND Reg2);
				  Neg <= '0';
				  
				when "0000000001000000" =>
				--Do Boolean OR
				  Result <= (Reg1 OR Reg2);
				  Neg <= '0';
				  
				when "0000000010000000" =>
				--Do Boolean XOR
				  Result <= (Reg1 XOR Reg2);
				  Neg <= '0';
				  
				when "0000000100000000" =>
				--Do Boolean XNOR
				  Result <= (Reg1 XNOR Reg2);
				  Neg <= '0';
				  
				when others =>
				-- Don't care, do nothing
				
			end case;
		end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;