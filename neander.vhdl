----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY neander IS
    PORT (
        clk : IN STD_LOGIC; -- Clock do sistema
        rst_neander : IN STD_LOGIC; -- reset geral do Neander
        data_out_neander : out std_logic
    );
END neander;

ARCHITECTURE Behavioral OF neander IS

    COMPONENT mem8bits
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            clkb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    TYPE estados IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, E0, E1, E2, E3);
    SIGNAL state, next_state : estados;

    SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL write_enable : STD_LOGIC;
    SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0); -- dados de saída da memória

    signal sel_MUX : STD_LOGIC; -- seletor do MUX
    signal reg_PC : std_logic_vector (7 downto 0); -- valor registrado no program counter (PC)
    signal rst_PC, load_PC, inc_PC : STD_LOGIC; -- controles de PC
    signal reg_REM : STD_LOGIC_VECTOR (7 DOWNTO 0); -- valor registrado na entrada de endereço de memória (REM)
    signal rst_REM, load_REM : STD_LOGIC; -- controles de REM
    SIGNAL reg_AC : STD_LOGIC_VECTOR (7 DOWNTO 0); -- valor registrado no acumulado (AC)
    signal rst_AC, load_AC : STD_LOGIC; -- controles de AC
    SIGNAL reg_RDM : STD_LOGIC_VECTOR (7 DOWNTO 0); -- valor no registrador de dados da memória (RDM)
    signal rst_RDM, load_RDM_mem, load_RDM_AC : STD_LOGIC; -- controles RDM
    signal reg_RI : STD_LOGIC_VECTOR (7 DOWNTO 0); -- valor no registrador de instruções (RI)
    signal rst_RI, load_RI : STD_LOGIC; -- controles RI
    signal sel_ULA : STD_LOGIC_VECTOR (2 DOWNTO 0); -- seletor de operação ULA
    signal X, Y, out_ULA : std_logic_vector (7 downto 0);
    signal reg_N, reg_Z : STD_LOGIC; -- flags zero e negativo
    SIGNAL out_MUX : STD_LOGIC_VECTOR (7 DOWNTO 0);
    

BEGIN

    -- Memória BRAM ------------------------------------------------------------
    your_instance_name : mem8bits
    PORT MAP(
        clka => clk,
        wea => write_enable,
        addra => addr,
        dina => data_in,
        clkb => clk,
        addrb => addr,
        doutb => data_out
    );

    -- FSM - Unidade de Controle ----------------------------------------------------
    PROCESS (clk, rst_neander)
    BEGIN
        IF (rst_neander = '1') THEN
            state <= S0;
            rst_PC <= '1';
            rst_AC <= '1';
            rst_RDM <= '1';
            rst_REM <= '1';
            rst_RI <= '1';
            reg_N <= '0';
            reg_Z <= '0';
        ELSIF (clk'event AND clk = '1') THEN
            state <= next_state;
        END IF;
    END PROCESS;

    PROCESS (state)
    BEGIN
        CASE state IS
            WHEN S0 =>
                sel_MUX <= '0';
                load_REM <= '1';

                next_state <= S1;
            WHEN S1 => -- wait 
                load_RDM_mem <= '1';
                inc_PC <= '1';

            WHEN S2 =>
                load_RI <= '1';

            WHEN S3 =>
                load_AC <= '1';

            WHEN S4 =>
                inc_PC <= '1';

            WHEN S5 =>
                sel_MUX <= '0';
                load_REM <= '1';

            WHEN S6 =>
                inc_PC <= '1';
                load_RDM_mem <= '1';

            WHEN S7 =>
                sel_MUX <= '1'
                load_REM <= '1';

            WHEN S8 =>
                load_RDM_AC <= '1';

            WHEN S9 => -- GRAVAR EM MEMÓRIA
                sel_MUX <= '1'
                load_REM <= '1';
                write_enable <= '1';

            WHEN S10 =>
                load_RDM_mem <= '1';
            WHEN S11 =>
                load_AC <= '1';

            WHEN S12 =>
                load_RDM_mem <= '1';

            WHEN S13 =>
                load_PC <= '1';

            WHEN S14 =>

        END CASE;
    END PROCESS;

    -- Não implementado;
    -- Registradores, MUXs e ULA
    PROCESS (sel_ULA, X, Y, reg_AC, reg_RDM) --ULA-----------------------------------------------------
    BEGIN
        X <= reg_AC;
        Y <= reg_RDM;
        CASE sel_ULA IS
            WHEN "000" => out_ULA <= STD_LOGIC_VECTOR(signed(X) + signed(Y));
            WHEN "001" => out_ULA <= X AND Y;
            WHEN "010" => out_ULA <= X OR Y;
            WHEN "011" => out_ULA <= NOT X;
            WHEN "100" => out_ULA <= Y;
            WHEN "101" => out_ULA <= STD_LOGIC_VECTOR(signed(X) - signed(Y));
            WHEN "110" => out_ULA <= X XOR Y;
            WHEN OTHERS => out_ULA <= X;
        END CASE;
        IF out_ULA(7) = '1' THEN
            reg_N <= '1';
        ELSE
            reg_N <= '0';
        END IF;
        IF out_ULA = "00000000" THEN
            reg_Z <= '1';
        ELSE
            reg_Z <= '0';
        END IF;
    END PROCESS; ---------------------------------------------------------------------------------------

    PROCESS (sel_MUX, reg_PC, reg_RDM) --MUX-----------------------------------------------------------
    BEGIN
        CASE sel_MUX IS
            WHEN '0' => out_MUX <= reg_PC;
            WHEN '1' => out_MUX <= reg_RDM;
            WHEN OTHERS => out_MUX <= reg_PC;
        END CASE;
    END PROCESS; -- MUX---------------------------------------------------------------------------------

    PROCESS (rst_PC, load_PC, inc_PC, clk) --REG_PC---------------------------------------------------
    BEGIN
        IF rst_PC = '1' THEN
            reg_PC <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_PC = '1') THEN
                reg_PC <= reg_RDM;
            ELSIF (inc_PC = '1') THEN
                reg_PC <= STD_LOGIC_VECTOR(unsigned(reg_PC) + 1);
            ELSE
                reg_PC <= reg_PC;
            END IF;
        END IF;
    END PROCESS; ---------------------------------------------------------------------------------------

    PROCESS (rst_AC, load_AC, clk) --REG_AC------------------------------------------------------------
    BEGIN
        IF rst_AC = '1' THEN
            reg_AC <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_AC = '1') THEN
                reg_AC <= out_ULA;
            ELSE
                reg_AC <= reg_AC;
            END IF;
        END IF;
    END PROCESS; ------------------------------------------------------------------------------------------

    PROCESS (rst_REM, load_REM, clk)--REG_REM-----------------------------------------------------------
    BEGIN
        IF rst_REM = '1' THEN
            reg_REM <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_REM = '1') THEN
                reg_REM <= out_MUX;
            ELSE
                reg_REM <= reg_REM;
            END IF;
        END IF;
    END PROCESS; --------------------------------------------------------------------------------------

    PROCESS (rst_RDM, load_RDM_mem, load_RDM_AC, clk)--REG_RDM-----------------------------------------------------------
    BEGIN
        IF rst_RDM = '1' THEN
            reg_RDM <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_RDM_mem = '1') THEN
                reg_RDM <= data_out;
            elsif (load_RDM_AC = '1') then
                reg_RDM <= reg_AC;
            else
                reg_RDM <= reg_RDM;
            END IF;
        END IF;
    END PROCESS; --------------------------------------------------------------------------------------

    PROCESS (rst_RI, load_RI, clk)--REG_RI-------------------------------------------------------------
    BEGIN
        IF rst_RI = '1' THEN
            reg_RI <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_RI = '1') THEN
                reg_RI <= reg_RDM;
            ELSE
                reg_RI <= reg_RI;
            END IF;
        END IF;
    END PROCESS; ----------------------------------------------------------------------------------------

END Behavioral;