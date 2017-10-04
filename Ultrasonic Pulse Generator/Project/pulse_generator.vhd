----------------------------------------------------------------------------------
-- Company        : 
-- Engineer       :    Mustafa Mısırlı
-- 
-- Create Date    :    12/10/2016 
-- Design Name    : 
-- Module Name    :    pulse_generator 
-- Project Name   : 
-- Target Devices :    Cyclone III
-- Tool versions  : 
-- Description    : 
--
-- Dependencies   : 
--
-- Revision       :    1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pulse_generator is
	 generic( max_np_number : INTEGER := 255);              -- maximum number of pulse 
	 
    Port ( clk    : in  STD_LOGIC;                         -- system clock
           prf    : in  STD_LOGIC;                         -- pulse repetition frequency
           wav    : in  STD_LOGIC_VECTOR (1 downto 0);     -- waveform select
			  phase  : in  STD_LOGIC;                         -- phase select
           grnd   : in  STD_LOGIC;                         -- if grnd=1, there is ground between two different polarities then there isn't ground
			  enable : in  std_logic;                         -- activate output signals
           np     : in  integer range 0 to max_np_number;  -- number of pulse
			  reset  : in  std_logic;                         -- asenkron reset
			  busy   : out std_logic;                         -- busy is high while generating output signals 
           InAout : out STD_LOGIC;                         -- it is control signal for switching positive polarity
           InBout : out STD_LOGIC;                         -- it is control signal for switching negative polarity
           InCout : out STD_LOGIC;                         -- it is control signal for switching ground
           InDout : out STD_LOGIC);                        -- it is control signal for switching ground
end pulse_generator;

architecture Behavioral of pulse_generator is
	signal flag : std_logic;                                  -- flag bit is set while prf is rising edge and reset after all wave is completed
	
	signal data : std_logic_vector(3 downto 0);               -- 4 bit output data
	
	signal wavsel : std_logic_vector(2 downto 0);             -- waveform select
	signal outsel : std_logic_vector(1 downto 0);             -- output select
	
	signal InA_done      : std_logic;                         -- InA_completed
	signal InB_done      : std_logic;                         -- InB_completed
	signal InC_done      : std_logic;                         -- InC_completed
	signal InD_done      : std_logic;                         -- InD_completed	
	signal InA_InB_done  : std_logic;                         -- inA and inB completed
	signal all_wave_done : std_logic;                         -- all signals completed
	
	signal counter_chA : integer range 0 to max_np_number;    -- inA_out rising edge counter
	signal counter_chB : integer range 0 to max_np_number;    -- inB_out rising edge counter
	signal counter_chC : integer range 0 to max_np_number;    -- inC_out rising edge counter
	signal counter_chD : integer range 0 to max_np_number;    -- inD_out rising edge counter
	
	signal InA_signal : STD_LOGIC;                            
   signal InB_signal : STD_LOGIC;                            
   signal InC_signal : STD_LOGIC;                            
   signal InD_signal : STD_LOGIC;                            
			
	signal clr_0 : std_logic := '1';                          -- clr_0 is high during a clock period after all signals completed
	signal clr_1 : std_logic := '1';                          -- resets output signals, flag bit and counters
	
	type state_type is (state0, state1, state2, state3);      -- state0 is a state that all waves are low. state1 is state that InA_signal is high and others are low. 
   signal state : state_type;                                -- state2 is a state that InB_signal is high and others are low. state3 is a state that InC_signal and InD_signal are high and others are low.
	
begin
	wavsel <= grnd & wav;                                     -- wavsel is 3 bit and 8 different conditions are possible   	
	clr_1  <= clr_0 and reset;	                               -- external and internal reset
	outSel <= enable & phase;                                 -- outsel is 2 bit and determine the state of output waveforms
	busy   <= flag;                                           -- flag is set while generating output signals
		
	All_Wave_done <= InA_done and InB_done and InC_done and InD_done;  -- all signals completed
	InA_InB_done  <= InA_done and InB_done;                            -- inA and InB completed
	
	process(flag, state, clk)                                 -- after all signals completed, system is reset
	begin
		if(flag='0')then
			clr_0 <= '1';
		elsif(clk'event and clk='1')then
			if(all_wave_done='1' and state=state0)then
				clr_0 <= '0';
			end if;			
		end if;
	end process;
	
	process(prf, clr_1)                            -- flag is set while prf is rising edge
	begin
		if(clr_1 = '0')then                         -- asenkron reset
			flag <= '0';
		elsif(prf'event and prf = '1')then  
			if(enable = '1')then
				flag <= '1';
			end if;
		end if;
	end process;
	
	process (clk,reset)                                -- state machine
	begin
		if(reset = '0')then                             -- asenkron reset
			state <= state0;
		elsif(clk'event and clk='0') then               -- falling edge triggered
			CASE state IS		
			WHEN state0 =>                               -- all waves are low at state0               
				IF (flag = '1') THEN                      -- if flag is equal to 1 next state is state1
					state <= state1;
				ELSE                                      -- if flag is not equal to 1 next state is state0
					state <= state0;
				end if;
			
			WHEN state1 =>                                                                                                                                        -- inA is high and others are low at state1
				IF (((WavSel="000" or WavSel="001" or WavSel="010" or WavSel="011") and InA_done ='0') or ((WavSel="000" or WavSel="010") and InA_done='1')) THEN  -- conditions of the next state
					state <= state2;                                                                                                                                -- if conditions of the next state is true, next state is state2
				ELSIF(((WavSel="100" or WavSel="101" or WavSel="110")) or (WavSel="111" and InA_done='0') or (WavSel="001" and InA_done='1')) THEN                 -- conditions of the next state
					state <= state3;                                                                                                                                -- if conditions of the next state is true, next state is state3
				ELSIF((WavSel="011" or WavSel="111") and InA_done='1')THEN                                                                                         -- conditions of the next state
					state <= state0;                                                                                                                                -- if conditions of the next state is true, next state is state0
				ELSE
					state <= state0;
				END IF;
			
			WHEN state2 =>
				IF (InA_done='0'and (WavSel="000" or WavSel="001" or WavSel="010" or WavSel="011")) THEN
					state <= state1;
				ELSIF(((WavSel="000" or WavSel="100") and InA_InB_done='1') or ((WavSel="100" or WavSel="101" or WavSel="110" or WavSel="111") and InA_InB_done='0')) THEN
					state <= state3;
				ELSIF((WavSel="010" or WavSel="110") and InA_InB_done='1') THEN
					state <= state0;
				ELSE
					state <= state0;
				END IF;
				
			WHEN state3 =>
				IF ((WavSel="100" or WavSel="101" or WavSel="110" or WavSel="111") and All_Wave_done='0' and (counter_chA/=counter_chB)) THEN
					state <= state2;
				ELSIF ((WavSel="100" or WavSel="101" or WavSel="110" or WavSel="111") and All_Wave_done='0' and (counter_chA=counter_chB)) THEN
					state <= state1;
				ELSIF (All_Wave_done='1') THEN
					state <= state0;
				ELSE
					state <= state0;
				END IF;
				
			END CASE;
		end if;
	end process;
	
	process (State)
	begin	
		case State is
			when state0 =>
				data <= "0000";
			when state1 =>
				data <= "0001";
			when state2 =>
				data <= "0010";
			when state3 =>
				data <= "1100";
		end case;
	end process;
	
	process(clk, clr_1)                         -- latches data to determine by state machine
	begin
		if(clr_1 = '0')then                      -- asenkron reset
			inA_Signal <= '0';
			inB_Signal <= '0';
			inC_Signal <= '0';
			inD_Signal <= '0';
		elsif(clk'event and clk = '1')then       -- rising edge triggered
			inA_Signal <= data(0);
			inB_Signal <= data(1);
			inC_Signal <= data(2);
			inD_Signal <= data(3);
		end if;
	end process;
	
	process (outsel, inA_signal, inB_signal, inC_signal, inD_signal)   -- output multiplexer
    begin
      case Outsel is                                                  -- outsel <= enable & phase 
         when "00" =>   InAout <= '0';                                -- if outsel is equal to "00", all waves are low
							   InBout <= '0';                                
							   InCout <= '0';                                
							   InDout <= '0';                                
         when "01" =>   InAout <= '0';                                -- if outsel is equal to "01", all waves are low
							   InBout <= '0';                                
							   InCout <= '0';                                
							   InDout <= '0';                                
         when "10" =>   InAout <= InA_Signal;                         -- if outsel is equal to "10", the waves are produced in the phase no different
							   InBout <= InB_Signal;                         
							   InCout <= InC_Signal;                          
							   InDout <= InD_Signal;                         
         when "11" =>   InAout <= InB_Signal;                         -- if outsel is equal to "11", the waves are produced in the phase different
							   InBout <= InA_Signal;                         
							   InCout <= InC_Signal;                         
							   InDout <= InD_Signal;                         
         when others => InAout <= '0';                                -- if outsel is others, all waves are low
							   InBout <= '0';                                
							   InCout <= '0';                                
							   InDout <= '0';                                
      end case;
    end process;

	process(inA_signal, inB_signal, inC_signal, inD_signal, clr_1) -- wave counter
	begin
		if(clr_1='0')then                                           -- asenkron reset
			counter_chA <= 0;
		elsif(InA_Signal'event and InA_Signal='1')then              -- rising edge triggered
			counter_chA <= counter_chA + 1;
		end if;
		
		if(clr_1='0')then                                           -- asenkron reset
			counter_chB <= 0;
		elsif(InB_Signal'event and InB_Signal='1')then              -- rising edge triggered
			counter_chB <= counter_chB + 1;
		end if;
		
		if(clr_1='0')then                                           -- asenkron reset
			counter_chC <= 0;
		elsif(InC_Signal'event and InC_Signal='1')then              -- rising edge triggered
			counter_chC <= counter_chC + 1;
		end if;
		
		if(clr_1='0')then                                           -- asenkron reset
			counter_chD <= 0;
		elsif(InD_Signal'event and InD_Signal='1')then              -- rising edge triggered
			counter_chD <= counter_chD + 1;
		end if;
	end process;
	
	process(counter_chA, counter_chB, counter_chC, counter_chD, np, wavsel)   -- production of feedback signals
	begin
		if(WavSel(0)='0' and NP=counter_chA)then
			InA_done <= '1';
		elsif(WavSel(0)='1' and (NP+1)=counter_chA)then
			InA_done <= '1';
		else
			InA_done <= '0';
		end if;
		
		if(counter_chB=NP)then
			InB_done <= '1';
		else
			InB_done <= '0';
		end if;
		
		if((WavSel="000" or WavSel="001") and counter_chC=1)then
			InC_done <= '1';
		elsif((WavSel="010" or WavSel="011") and counter_chC=0)then
			InC_done <= '1';
		elsif((WavSel="100" or WavSel="111") and counter_chC=(2*NP))then
			InC_done <= '1';
		elsif((WavSel="101") and counter_chC=(2*NP+1))then
			InC_done <= '1';
		elsif((WavSel="110") and counter_chC=(2*NP-1))then
			InC_done <= '1';
		else
			InC_done <= '0';
		end if;
		
		if((WavSel="000" or WavSel="001") and counter_chD=1)then
			InD_done <= '1';
		elsif((WavSel="010" or WavSel="011") and counter_chD=0)then
			InD_done <= '1';
		elsif((WavSel="100" or WavSel="111") and counter_chD=(2*NP))then
			InD_done <= '1';
		elsif((WavSel="101") and counter_chD=(2*NP+1))then
			InD_done <= '1';
		elsif((WavSel="110") and counter_chD=(2*NP-1))then
			InD_done <= '1';
		else
			InD_done <= '0';
		end if;
	end process;
end Behavioral;
