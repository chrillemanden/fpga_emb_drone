--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Mon Dec  7 17:18:07 2020
--Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
--Command     : generate_target receiver_control_sim.bd
--Design      : receiver_control_sim
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity receiver_control_sim is
  port (
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    en_0 : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    rst : in STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of receiver_control_sim : entity is "receiver_control_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=receiver_control_sim,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of receiver_control_sim : entity is "receiver_control_sim.hwdef";
end receiver_control_sim;

architecture STRUCTURE of receiver_control_sim is
  component receiver_control_sim_spi_follower_receiver_0_0 is
  port (
    sck : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : in STD_LOGIC;
    miso : in STD_LOGIC;
    read_done : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component receiver_control_sim_spi_follower_receiver_0_0;
  component receiver_control_sim_spi_follower_transmi_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sck : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : out STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    mosi : out STD_LOGIC
  );
  end component receiver_control_sim_spi_follower_transmi_0_0;
  component receiver_control_sim_Controller_0_0 is
  port (
    SPI_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_done : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : out STD_LOGIC;
    en_SPI : out STD_LOGIC;
    dout_SPI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component receiver_control_sim_Controller_0_0;
  signal Controller_0_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Controller_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Controller_0_dout_SPI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Controller_0_en : STD_LOGIC;
  signal Controller_0_en_SPI : STD_LOGIC;
  signal Controller_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Controller_0_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal miso_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal spi_follower_receiver_0_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_follower_receiver_0_read_done : STD_LOGIC;
  signal spi_follower_transmi_0_mosi : STD_LOGIC;
  signal spi_follower_transmi_0_read_en : STD_LOGIC;
  signal spi_follower_transmi_0_sck_out : STD_LOGIC;
  signal spi_follower_transmi_0_ss : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN receiver_control_sim_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  addr(31 downto 0) <= Controller_0_addr(31 downto 0);
  clk_0_1 <= clk;
  dout(31 downto 0) <= Controller_0_dout(31 downto 0);
  en_0 <= Controller_0_en;
  led(3 downto 0) <= Controller_0_led(3 downto 0);
  miso_0_1 <= miso;
  mosi <= spi_follower_transmi_0_mosi;
  rst_0_1 <= rst;
  sck_out <= spi_follower_transmi_0_sck_out;
  ss <= spi_follower_transmi_0_ss;
  we(3 downto 0) <= Controller_0_we(3 downto 0);
Controller_0: component receiver_control_sim_Controller_0_0
     port map (
      SPI_data(7 downto 0) => spi_follower_receiver_0_data(7 downto 0),
      addr(31 downto 0) => Controller_0_addr(31 downto 0),
      clk => clk_0_1,
      dout(31 downto 0) => Controller_0_dout(31 downto 0),
      dout_SPI(15 downto 0) => Controller_0_dout_SPI(15 downto 0),
      en => Controller_0_en,
      en_SPI => Controller_0_en_SPI,
      led(3 downto 0) => Controller_0_led(3 downto 0),
      read_done => spi_follower_receiver_0_read_done,
      rst => rst_0_1,
      we(3 downto 0) => Controller_0_we(3 downto 0)
    );
spi_follower_receiver_0: component receiver_control_sim_spi_follower_receiver_0_0
     port map (
      data(7 downto 0) => spi_follower_receiver_0_data(7 downto 0),
      miso => miso_0_1,
      read_done => spi_follower_receiver_0_read_done,
      read_en => spi_follower_transmi_0_read_en,
      rst => rst_0_1,
      sck => clk_0_1
    );
spi_follower_transmi_0: component receiver_control_sim_spi_follower_transmi_0_0
     port map (
      data(15 downto 0) => Controller_0_dout_SPI(15 downto 0),
      en => Controller_0_en_SPI,
      mosi => spi_follower_transmi_0_mosi,
      read_en => spi_follower_transmi_0_read_en,
      rst => rst_0_1,
      sck => clk_0_1,
      sck_out => spi_follower_transmi_0_sck_out,
      ss => spi_follower_transmi_0_ss
    );
end STRUCTURE;
