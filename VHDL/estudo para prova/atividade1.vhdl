library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity circuito_1 is
    port(
    clock: in std_logic;
    reset: in std_logic;
    in3 : in std_logic_vector(3 downto 0);
    in2 : in std_logic_vector(3 downto 0);
    in1 : in std_logic_vector(3 downto 0);
    result: out std_logic_vector(3 downto 0)
    );
    end entity;
    architecture behavior of circuito_1 is
        signal ff1 : std_logic_vector(3 downto 0);
        signal ff2 : std_logic_vector(3 downto 0);
        signal ff3 : std_logic_vector(3 downto 0);
        signal multi : std_logic_vector(7 downto 0);
        signal ff4 : std_logic_vector(3 downto 0);
        signal ff5 : std_logic_vector(3 downto 0);
        signal soma : std_logic_vector(3 downto 0);
        signal ff6 : std_logic_vector(3 downto 0);
       begin
        process(clock, reset)
    begin
        if reset = '0' then
            ff1 <= "0000";
            ff2 <= "0000";
            ff3 <= "0000";
           
           
            result <= "0000";
        elsif rising_edge(clock) then
            ff1 <= in1;
            ff2 <= in2;
            ff3 <= in3;
            
            
            
        end if;
    end process;
    multi <= ff1 * ff2;
        process(clock, reset)
    begin
        if reset = '0' then
            multi <= "00000000";
            ff4 <= "0000";
            ff5 <= "0000";
        elsif
            rising_edge(clock) then
                ff4 <= multi(7 downto 4);
			    ff5 <= not ff3;
        end if;
    end process;
    soma <= ff4 + not ff5;
    process(clock, reset)
    begin
        if reset = '0' then
            soma <= "0000";
            result <= "0000";
        elsif
            rising_edge(clock) then
        ff6 <= soma;  
        end if;
    end process;

    result <= ff6;
    
    end behavior;