-------------------------------------------------------------------------------
--
-- $Id: t48_system_comp_pack-p.vhd,v 1.3 2004-12-03 19:43:12 arniml Exp $
--
-- Copyright (c) 2004, Arnim Laeuger (arniml@opencores.org)
--
-- All rights reserved
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package t48_system_comp_pack is

  component t8048_notri
    generic (
      gate_port_input_g : integer := 1
    );

    port (
      xtal_i       : in  std_logic;
      reset_n_i    : in  std_logic;
      t0_i         : in  std_logic;
      t0_o         : out std_logic;
      t0_dir_o     : out std_logic;
      int_n_i      : in  std_logic;
      ea_i         : in  std_logic;
      rd_n_o       : out std_logic;
      psen_n_o     : out std_logic;
      wr_n_o       : out std_logic;
      ale_o        : out std_logic;
      db_i         : in  std_logic_vector( 7 downto 0);
      db_o         : out std_logic_vector( 7 downto 0);
      db_dir_o     : out std_logic;
      t1_i         : in  std_logic;
      p2_i         : in  std_logic_vector( 7 downto 0);
      p2_o         : out std_logic_vector( 7 downto 0);
      p2_low_imp_o : out std_logic;
      p1_i         : in  std_logic_vector( 7 downto 0);
      p1_o         : out std_logic_vector( 7 downto 0);
      p1_low_imp_o : out std_logic;
      prog_n_o     : out std_logic
    );
  end component;

  component t8039_notri
    generic (
      gate_port_input_g : integer := 1
    );

    port (
      xtal_i       : in  std_logic;
      reset_n_i    : in  std_logic;
      t0_i         : in  std_logic;
      t0_o         : out std_logic;
      t0_dir_o     : out std_logic;
      int_n_i      : in  std_logic;
      ea_i         : in  std_logic;
      rd_n_o       : out std_logic;
      psen_n_o     : out std_logic;
      wr_n_o       : out std_logic;
      ale_o        : out std_logic;
      db_i         : in  std_logic_vector( 7 downto 0);
      db_o         : out std_logic_vector( 7 downto 0);
      db_dir_o     : out std_logic;
      t1_i         : in  std_logic;
      p2_i         : in  std_logic_vector( 7 downto 0);
      p2_o         : out std_logic_vector( 7 downto 0);
      p2_low_imp_o : out std_logic;
      p1_i         : in  std_logic_vector( 7 downto 0);
      p1_o         : out std_logic_vector( 7 downto 0);
      p1_low_imp_o : out std_logic;
      prog_n_o     : out std_logic
    );
  end component;

  component t8048
    port (
      xtal_i    : in    std_logic;
      reset_n_i : in    std_logic;
      t0_b      : inout std_logic;
      int_n_i   : in    std_logic;
      ea_i      : in    std_logic;
      rd_n_o    : out   std_logic;
      psen_n_o  : out   std_logic;
      wr_n_o    : out   std_logic;
      ale_o     : out   std_logic;
      db_b      : inout std_logic_vector( 7 downto 0);
      t1_i      : in    std_logic;
      p2_b      : inout std_logic_vector( 7 downto 0);
      p1_b      : inout std_logic_vector( 7 downto 0);
      prog_n_o  : out   std_logic
    );
  end component;

  component t8039
    port (
      xtal_i    : in    std_logic;
      reset_n_i : in    std_logic;
      t0_b      : inout std_logic;
      int_n_i   : in    std_logic;
      ea_i      : in    std_logic;
      rd_n_o    : out   std_logic;
      psen_n_o  : out   std_logic;
      wr_n_o    : out   std_logic;
      ale_o     : out   std_logic;
      db_b      : inout std_logic_vector( 7 downto 0);
      t1_i      : in    std_logic;
      p2_b      : inout std_logic_vector( 7 downto 0);
      p1_b      : inout std_logic_vector( 7 downto 0);
      prog_n_o  : out   std_logic
    );
  end component;

end t48_system_comp_pack;
