# Moku-CRIO 
Moku Control Regster IO tutorial
## CRIO Overview
Let's create a simple MCC bitstream that will let us use the **Moku Output** ports as our own little network controllable voltage generator.

To do this all we need to do is utilize the [[Lab/DevBoards/Moku/N/Moku Control Registers|Moku Control Registers]]. 
Specifically, let create a bitstream such that

**OutA** reflects the current 16-bit value in **CR1**
**OutB** reflects the current 16-bit value in **CR2** 

The simplest way to express this is to use the [[Lab/DevBoards/Moku/N/Moku Support Clip|Moku Support Clip]] function (which is part of the [[Lab/DevBoards/Moku/N/Moku Support Library|Moku Support Library]]). 

In fact, once you strip out the boilerplate startup code, this really only depends on __two__ line of custom code. 
``` vhdl  
architecture Behavioural of CustomWrapper is
begin
    OutputA <= signed(Control1(15 downto 0));
    OutputB <= signed(Control2(15 downto 0));
end Behavioural;
```



