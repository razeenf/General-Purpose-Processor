library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU2 is
port
(clock : in std_logic;
A,B: in unsigned (7 downto 0);
student_id : in unsigned (3 downto 0);
op : in unsigned (15 downto 0);
neg: out std_logic;
R1: out unsigned (3 downto 0);
R2: out unsigned (3 downto 0);
carry : out std_logic);
end ALU2;

Architecture tasks of ALU2 is
signal result : unsigned(3 downto 0):= (others => '0');
signal temp: unsigned(8 downto 0):= (others => '0'); 
signal C : unsigned(7 downto 0):= (others => '0');

begin
process (clock,op)
begin
if(rising_edge(clock)) then
case op is
			when "0000000000000001"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				

			when "0000000000000010"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
			when "0000000000000100"=>
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
				
			when "0000000000001000"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
				
			when "0000000000010000"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
				
			when "0000000000100000"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
			when "0000000001000000"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
				
			when "0000000010000000"=>
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;

				
			when "0000000100000000"=> 
				If (student_id (3 Downto 0)< "0100")
				Then Result <= "1111";
				Elsif (student_id (3 Downto 0) < "0001")
					Then Result <= "1111";
				Else 
					Result <= "0000"; 
				End if;
				
			
			when others => result <= "0000";
			
		end case;
	end if;
end process;
R1<=result(3 downto 0);
R2<=result(3 downto 0);
end tasks;