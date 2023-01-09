library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity atividade2_tb is
    end entity;
    architecture behavior of atividade2_tb is

        component ati_2 is
            port(
                clk: in std_logic;
                reset: in std_logic;
                in1: in std_logic_vector(3 downto 0);
                in2: in std_logic_vector(3 downto 0);
                in3: in std_logic_vector(3 downto 0);
                enable: in std_logic;
                result: out std_logic_vector(3 downto 0)
            
            );
            end component;
            signal clk: std_logic := '0';
            signal reset: std_logic := '1';
            signal in1: std_logic_vector(3 downto 0) := "0000";
            signal in2: std_logic_vector(3 downto 0) := "0000";
            signal in3: std_logic_vector(3 downto 0) := "0000";
            signal enable: std_logic := '0';
            signal result: std_logic_vector(3 downto 0) := "0000";
            begin
                inst_top: ati_2
                port map(
                    clk => clk,
                    reset => reset,
                    in1 => in1,
                    in2 => in2,
                    in3 => in3,
                    enable => enable,
                    result => result
                );
                process
                begin
                    clk <= not clk after 20 ns;
                    wait for 10 ns;
                    reset <= '0';
                    wait for 10 ns;
                    enable <= '1';
                    in1 <= "0100";
                    in2 <= "0100";
                    in3 <= "0010";

                    wait ;
                    end process;
                    end behavior;




    