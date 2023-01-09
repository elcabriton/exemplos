library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity tb_logica_1 is
    end entity;
architecture behavior  of tb_logica_1 is
    component logica_1 is 
    port(
        clock: in std_logic;
        reset: in std_logic;
        in1: in std_logic_vector(3 downto 0);
        in2: in std_logic_vector(3 downto 0);
        in3: in std_logic_vector(3 downto 0);
        result: out std_logic_vector(3 downto 0)
    
    );
    end component;
    signal clock    : std_logic:= '0';
    signal reset    : std_logic:='0';
    signal in1: std_logic_vector(3 downto 0);
    signal in2: std_logic_vector(3 downto 0);
    signal in3: std_logic_vector(3 downto 0);
    signal result: std_logic_vector(3 downto 0):="0000";

begin
    inst_top: logica_1
    port map(
        clock => clock,
        reset => reset,
        in1 => in1,
        in2 => in2,
        in3 => in3,
        result => result
    );
   clock <= not clock after 5 ns;                                    
   process
    begin
        wait for 5 ns;
        reset <= '1';
        wait for 10 ns;
        
        in1 <= "0001";--3
        in2 <= "0001";--3
        in3 <= "0001";--1
        wait;
    end process;
    end behavior;

    

        

