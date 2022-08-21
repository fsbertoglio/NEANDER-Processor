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
        out_MEM : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- Dados de saida de memória (SERÂO INMPLEMENTADOS NA MEMÒRIA)
        sel_MUX : IN STD_LOGIC; -- seletor do MUX
        rst_PC, load_PC, inc_PC : IN STD_LOGIC; -- controles de PC
        rst_REM, load_REM : IN std_logic; -- controles de REM
        rst_AC, load_AC : IN std_logic; -- controles de AC
        rst_RDM, load_RDM : IN std_logic; -- controles RDM
        rst_RI, load_RI : IN std_logic; -- controles RI
        sel_ULA : IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- seletor de operação ULA
        reg_N, reg_Z : OUT STD_LOGIC; -- flags zero e negativo
        reg_REM, reg_RI : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END neander;

ARCHITECTURE Behavioral OF neander IS
	COMPONENT wrapped_bram
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



    SIGNAL X, Y, out_ULA, out_MUX : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL reg_PC, reg_AC, reg_RDM : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

    -- BRAM e FSM
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
            WHEN "101" => out_ULA <= std_logic_vector(signed(X) - signed(Y));
            WHEN "110" => out_ULA <= X xor Y;
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

    PROCESS (rst_PC, load_PC, reg_RDM, clk) --REG_PC---------------------------------------------------
    BEGIN
        IF rst_PC = '1' THEN
            reg_PC <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            IF (load_PC = '1') THEN
                reg_PC <= reg_RDM;
            ELSIF (inc_PC = '1') THEN
                reg_PC <= STD_LOGIC_VECTOR(unsigned(reg_PC) + 1);
            else
                reg_PC <= reg_PC;
            END IF;
        END IF;
    END PROCESS; ---------------------------------------------------------------------------------------

    PROCESS (rst_AC, out_ULA, clk) --REG_AC------------------------------------------------------------
    BEGIN
        IF rst_AC = '1' THEN
            reg_AC <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            if (load_AC = '1') then
                reg_AC <= out_ULA;
            else 
                reg_AC <= reg_AC;
            end if;
        end if;
    END PROCESS; ------------------------------------------------------------------------------------------

    PROCESS (rst_REM, out_MUX, clk)--REG_REM-----------------------------------------------------------
    BEGIN
        IF rst_REM = '1' THEN
            reg_REM <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            if (load_REM = '1') then
                reg_REM <= out_MUX;
            else 
                reg_REM <= reg_REM;
            end if;
        END IF;
    END PROCESS; --------------------------------------------------------------------------------------

    PROCESS (rst_RDM, out_MEM, clk)--REG_RDM-----------------------------------------------------------
    BEGIN
        IF rst_RDM = '1' THEN
            reg_RDM <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            if (load_RDM = '1') then
                reg_RDM <= out_MEM;
            else 
                reg_RDM <= reg_RDM;
            end if;
        END IF;
    END PROCESS; --------------------------------------------------------------------------------------

    PROCESS (rst_RI, reg_RDM, clk)--REG_RI-------------------------------------------------------------
    BEGIN
        IF rst_RI = '1' THEN
            reg_RI <= "00000000";
        ELSIF (clk'event AND clk = '1') THEN
            if (load_RI = '1') then
                reg_RI <= reg_RDM;
            else 
                reg_RI <= reg_RI;
            end if;
        END IF;
    END PROCESS; ----------------------------------------------------------------------------------------

END Behavioral;