-- neander 
--library "neander"
library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity neander is
    port(
        clock  : in std_logic;
        reset  : in std_logic;
        count_load : in std_logic;
        en_ULA : in std_logic;
        ULA_sel : in std_logic_vector(2 downto 0);
    );
end neander;


--arquitetura
architecture all of neander is
    
    


        
