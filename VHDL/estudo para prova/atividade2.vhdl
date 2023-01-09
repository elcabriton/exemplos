library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity exercise_2 is
    port
    (
    clk : in std_logic;
    reset : in std_logic;
    enable : in std_logic;
    in1 : in std_logic_vector(3 downto 0);
    in2 : in std_logic_vector(3 downto 0);
    in3 : in std_logic_vector(3 downto 0);
    result : out std_logic_vector(3 downto 0)
        
    );
    end entity;
    architecture behavior of exercise_2 is
    
   signal     ff1 : std_logic_vector(3 downto 0);
   signal    ff2 : std_logic_vector(3 downto 0);
   signal    ff3 : std_logic_vector(3 downto 0);
   signal    ff4 : std_logic_vector(3 downto 0);
   signal    ff5 : std_logic_vector(3 downto 0);
    signal    ff6 : std_logic_vector(3 downto 0);
    signal    soma : std_logic_vector(3 downto 0);
    signal   subtract : std_logic_vector(3 downto 0);
    signal    mux1: std_logic;
    signal   mux2: std_logic;
    signal    mux3: std_logic;
    begin
        process(clk, reset)
        begin
            if reset ='1' then
                ff1 <= (others => '0');
                ff2 <= (others => '0');
                ff3 <= (others => '0');
                ff4 <= (others => '0');
                ff5 <= (others => '0');
                ff6 <= (others => '0');
            elsif rising_edge(clk) then
                ff1<=in1 when enable='1' else ff1;
                ff2<=in2 when enable='1' else ff2;
                ff3<=in3 when enable='1' else ff3;
        end if;
        end process;
        
        process(clk, reset)
        begin
            if reset='1' then 
            ff1 <= (others => '0');
            ff2 <= (others => '0');
            ff3 <= (others => '0');
            ff4 <= (others => '0');
            ff5 <= (others => '0');
            ff6 <= (others => '0');
            elsif rising_edge(clk) then
            soma<=ff1+ff2;
            ff4<=soma;
            ff5<=ff3;
            end if;
        end process;
        
        process(clk, reset)
        begin
            if reset='1' then
            ff1 <= (others => '0');
            ff2 <= (others => '0');
            ff3 <= (others => '0');
            ff4 <= (others => '0');
            ff5 <= (others => '0');
            ff6 <= (others => '0');
            
            elsif rising_edge(clk) then
            subtract<=ff4-ff5;
            ff6<=subtract;

            result<=ff6;
            end if;
            end process;
            end behavior;

                




        

