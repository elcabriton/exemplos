-- Libraries definitions for F
library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity somador_flops is
	port(
		clock		: in std_logic;
		reset       : in std_logic;
		data1       : in std_logic_vector(3 downto 0);
		data2       : in std_logic_vector(3 downto 0);
		result      : out std_logic_vector(3 downto 0)
		);
end entity;

architecture behavior of somador_flops is
signal ff1 	: std_logic_vector(3 downto 0);
signal ff2  : std_logic_vector(3 downto 0);
signal ff3  : std_logic_vector(3 downto 0);
signal soma	: std_logic_vector(3 downto 0);

begin
process(clock, reset)
begin
	if reset = '0' then
		ff1			<= (others => '0');
		ff2         <= (others => '0');
		ff3         <= (others => '0');
		result      <= (others => '0');
	elsif (clock = '1' and clock'event) then
		ff1	       <= data1;
        ff2        <= not ff1;
        ff3        <= data2;
        result     <= soma;
    end if;
end process;
soma <= ff2 + ff3;
end behavior;