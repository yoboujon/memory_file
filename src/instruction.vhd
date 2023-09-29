library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity instruction is
port(
  instruction:  in  STD_LOGIC_VECTOR(7 downto 0);
  code:         out STD_LOGIC_VECTOR(31 downto 0);
  clk:          in  STD_LOGIC
);
end instruction;

architecture behavior_instr of instruction is
    -- Array of STD_LOGIC_VECTOR
    type code_array is array(0 to 15) of
        STD_LOGIC_VECTOR(7 downto 0);
    -- Memory variable
    signal code_memory: code_array;
begin
    process(instruction, clk) is
    begin
    end process;
end behavior_instr;