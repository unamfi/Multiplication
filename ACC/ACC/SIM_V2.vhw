--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : ISE
--  /   /         Filename : SIM_V2.vhw
-- /___/   /\     Timestamp : Sat Oct 20 02:00:24 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: SIM_V2
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY SIM_V2 IS
END SIM_V2;

ARCHITECTURE testbench_arch OF SIM_V2 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ACC
        PORT (
            A : InOut std_logic_vector (7 DownTo 0);
            B : InOut std_logic_vector (7 DownTo 0);
            C : InOut std_logic_vector (7 DownTo 0);
            NW : In std_logic;
            E0 : In std_logic;
            E1 : In std_logic;
            clk : In std_logic;
            Z : Out std_logic;
            N : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (7 DownTo 0) := "01000000";
    SIGNAL B : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL C : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL NW : std_logic := '0';
    SIGNAL E0 : std_logic := '0';
    SIGNAL E1 : std_logic := '0';
    SIGNAL clk : std_logic := '0';
    SIGNAL Z : std_logic := '0';
    SIGNAL N : std_logic := '0';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : ACC
        PORT MAP (
            A => A,
            B => B,
            C => C,
            NW => NW,
            E0 => E0,
            E1 => E1,
            clk => clk,
            Z => Z,
            N => N
        );

        PROCESS
            PROCEDURE CHECK_N(
                next_N : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (N /= next_N) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns N="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, N);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_N);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_Z(
                next_Z : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Z /= next_Z) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Z="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Z);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Z);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                E0 <= '1';
                clk <= '1';
                A <= "10100000";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                NW <= '1';
                E0 <= '0';
                E1 <= '1';
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9000ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9100ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9200ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9300ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9400ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9500ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9600ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9700ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9800ns
                WAIT FOR 100 ns;
                clk <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9900ns
                WAIT FOR 100 ns;
                clk <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10000ns
                WAIT FOR 100 ns;
                clk <= '0';

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

