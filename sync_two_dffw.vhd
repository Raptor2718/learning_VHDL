library ieee; use ieee.std_logic_1164.all;

entity sync_two_dffw is
	port (clk	: in 	std_logic;
			d		: in	std_logic;
			q		: out	std_logic);
end;

architecture bad of sync_two_dffw is
begin
	process (clk)
	variable n1		: std_logic;
	begin
		if clk'event and clk = '1' then
			q 	<= n1;
			n1 := d;
		end if;
	end process;
end;
			