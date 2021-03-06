------------------------------------------------------
-- ECEC 355 Computer Architecture
-- MIPS Single Cycle Datapath
-- Dagmawi  Mulugeta - Instruction Memory
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;


entity instructionMemory is
	port (  address: in STD_LOGIC_VECTOR (31 downto 0); ck: in STD_LOGIC;
		instruction: out STD_LOGIC_VECTOR(31 downto 0) );
end instructionMemory;



architecture behavioral of instructionMemory is	  

-- 128 byte instruction memory (32 rows * 4 bytes/row)
type ins_array is array(0 to 31) of STD_LOGIC_VECTOR(31 downto 0);

signal ins_mem: ins_array := (
        X"20160000",  --X"20160000",
        X"20170030",  --X"20170030",
        X"2008000a",  --X"2008000a",  
        X"20090014",  --X"20090014",   
        X"200a0000",  --X"200a0000",   
        X"200b0001",  --X"200b0001",     
        X"0128602a",  --X"0128602a",     
        X"116c000b",  --X"116c000b",       
        X"000a6880",         
        X"01b67020",
        X"8dcf0000", 
        X"0109c020", -- mem 10 
        X"030fc020", 
        X"add80000",
        X"2108FFFF",
        X"2129FFFD",
        X"214a0001",
        X"08000006",
        X"00000000",
        X"00000000",  
        X"00000000", -- mem 20
        X"00000000",
        X"00000000",
        X"00000000",
        X"00000000", 
        X"00000000",
        X"00000000",
        X"00000000",
        X"00000000",
        X"00000000", 
        X"00000000", -- mem 30
        X"00000000");

begin
	instruction <= ins_mem(to_integer(unsigned(address(31 downto 2))));
end behavioral;
