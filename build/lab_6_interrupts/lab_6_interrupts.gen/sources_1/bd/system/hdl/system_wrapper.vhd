--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sun Oct 27 12:01:50 2024
--Host        : Madhu running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_100mhz : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : out STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_100mhz : out STD_LOGIC;
    rst_n : out STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      btn(0) => btn(0),
      clk_100mhz => clk_100mhz,
      leds(3 downto 0) => leds(3 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
