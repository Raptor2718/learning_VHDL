library ieee; use ieee.std_logic_1164.all;

entity sync_two_dff is
	port (clk, nrst: in 	std_logic;
			d			: in	std_logic;
			q			: out	std_logic);
end;

architecture seq of sync_two_dff is
	signal n1		: std_logic;
begin
	process (clk, nrst)
	begin
		if nrst = '0' then
			q 	<= '0';
			n1 <= '1';
		elsif clk'event and clk = '1' then
			q 	<= n1;
			n1 <= d;
		end if;
	end process;
end;
			