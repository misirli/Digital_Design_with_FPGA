----------------------------------------------------------------------------------
-- Company        : 
-- Engineer       :    Mustafa MISIRLI
-- 
-- Create Date    :    03/03/2017 
-- Design Name    : 
-- Module Name    :    incremental_encoder_reader 
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

entity incr_enc_reader is
	 generic(coef_resolution : integer := 4;        -- the number of digits to the left of the decimal point
				counter_bit     : integer := 32);      -- counter bit number. half of counter_bit is for negative direction. other half is for positive direction
	 Port (A         : in  std_logic;
			 B         : in  std_logic;
			 Z         : in  std_logic;
			 dir_sel   : in  std_logic;                                 -- direction select
			 coef      : in  integer range 0 to 10**coef_resolution;
			 enable    : in  std_logic;
			 reset     : in  std_logic;
			 overflow  : out std_logic;
			 position  : out integer range -2**(counter_bit/2) to 2**(counter_bit/2)-1 :=0);
end incr_enc_reader;

architecture Behavioral of incr_enc_reader is
	signal direction : std_logic := '0';                                                      -- counterclockwise and clockwise.
	signal counter   : integer range -2**(counter_bit/2) to 2**(counter_bit/2)-1 :=0;  -- pulse counter
begin
	process(A)                         -- direction setting
	begin                            
	   if(reset='0')then               
			direction <= '0';            -- initial direction is clockwise
		elsif(A'event and A='1')then    
			if(dir_sel = '0')then        
				direction <= B;           -- if dir_sel is low, direction is not reversed
			else
				direction <= not B;       -- if dir_sel is high, direction is reversed
			end if;
		end if;
	end process;
	
	process(B, direction)                                -- pulse counter
	begin
		if(reset='0')then
			counter <= 0;                                  -- asenkron reset
		elsif(B'event and B='1')then                      -- rising edge of B is counted
			if(enable='1')then                             -- if enable is high, counter is active
				if(direction='0')then                       -- direction is low for clockwise
					if(counter < 2**(counter_bit/2)-1)then   -- maximum value of counter is 2**(counter_bit/2)-1
						counter <= counter + 1;               -- counter value is incremented
					else
						counter <= 0;                         -- reset if counter value is maximum
					end if;
				else
					if(counter > -2**(counter_bit/2))then    -- minimum value of counter is -2**(counter_bit/2)
						counter <= counter - 1;               -- counter value is  decremented
					else
						counter <= 0;                         -- reset if counter value is minimum
					end if;
				end if;
			end if;
		end if;
	end process;
	
	process(counter)                                                             -- prescaler
	begin
		position <= (counter * coef)/(10**coef_resolution);                       -- from 0.0001 to 1.0000
		if(counter = 2**(counter_bit/2)-1 or counter = -2**(counter_bit/2))then   -- if counter is maximum or minimum, overflow is set to high.
			overflow <= '1';
		else
			overflow <= '0';
		end if;
	end process;

end Behavioral;
