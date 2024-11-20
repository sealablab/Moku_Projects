library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.Numeric_Std.all;
--https://publish.obsidian.md/sealablab/Lab/DevBoards/Moku/Moku-Projects/Moku+CRIO
architecture Behavioural of CustomWrapper is
begin
    OutputA <= signed(Control1(15 downto 0));
    OutputB <= signed(Control2(15 downto 0));    
end architecture;

