-- Libraries definitions for F
library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity tb_somador_flops is
end entity;

architecture behavior of tb_somador_flops is

component somador_flops is
	port(
		clock		: in std_logic;
		reset       : in std_logic;
		data1       : in std_logic_vector(3 downto 0);
		data2       : in std_logic_vector(3 downto 0);
		result      : out std_logic_vector(3 downto 0)
		);
end component;
signal clock    : std_logic:= '0';
signal reset    : std_logic:='0';
signal data1    : std_logic_vector(3 downto 0):="1101"; --2
signal data2    : std_logic_vector(3 downto 0):="0011"; --3
signal result   : std_logic_vector(3 downto 0);

begin

inst_top: somador_flops
		port map(
				clock   => clock, 
		        reset   => reset, 
			    data1   => data1, 
                data2   => data2, 
                result  => result
                );
                
clock <= not clock after 10 ns;

process
begin
wait for 5 ns;
	reset <= '1';
wait for 15 ns;
	data1 <= "1000";   -- 7
	data2 <= "0100";   -- 4
wait;
end process;
end behavior;
