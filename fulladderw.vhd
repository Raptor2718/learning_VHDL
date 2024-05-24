library ieee; use ieee.std_logic_1164.all;

entity fulladderw is
	port(	a, b, cin	: in	std_logic;
			s, cout		: out	std_logic);
end;

architecture nonblocking of fulladderw is	--blocking should be used for intermediate VARIABLES - objects on left side of blocking assignments should be 
	signal p, g: std_logic;
begin
	process (a, b, cin) begin --, p, g) begin 			--what changes in synthesis when signals p & g aren't included in sensitivity list?
		p <= a xor b;
		g <= a and b;
		
		s 		<= p xor cin;
		cout 	<= g or (p and cin);
	end process;
end;