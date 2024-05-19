library ieee; use ieee.std_logic_1164.all;

entity flpenr is 
port (clk, rst, en	: in 	std_logic;
		d					: in 	std_logic_vector(3 downto 0);
		q					: out	std_logic_vector(3 downto 0));
end;

architecture asynchronous of flpenr	is
begin
process(clk, rst) begin
if rst = '1' then 
	q <= "0000";
elsif clk'event and clk = '1' and en = '1' then
	q <= d;
end if;
end process;
end;
		