// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: signal_out
// 
// Author: Andre Dubovskiy
// 
// Description: pulse state machine
// 

module PulseController
(
input clk_in,

input [31:0] pos1dur,
input [31:0] pos1pausedur,
input [31:0] pos2dur,
input [31:0] pos2pausedur,
input [31:0] pos3dur,
input [31:0] pos3pausedur,
input [31:0] pos4dur,
input [31:0] pos4pausedur,

input [31:0] neg1dur,
input [31:0] neg1pausedur,
input [31:0] neg2dur,
input [31:0] neg2pausedur,
input [31:0] neg3dur,
input [31:0] neg3pausedur,
input [31:0] neg4dur,
input [31:0] neg4pausedur,

output reg [7:0] signal_out,
output reg trigger,
output reg verify_trigger
);


parameter maxl = 22-1; // max length of timer and pulses

reg [3:0] pulse_index = 4'd0;
reg [3:0] old_pulse_index = 4'd0;

reg [maxl:0] pulse_durations [15:0];

reg [maxl:0] timer = 1'd0;

reg [maxl:0] currentpuldur = 1'd1;

always@(posedge clk_in)

//(R)eset then (W)rite then (M)easure, then do it again with reversed polarity for R and W
//M pulse is always positive
begin
	pulse_durations[7] <= pos1dur[maxl:0]; 			//R+
	pulse_durations[0]  <= pos1pausedur[maxl:0];	//pause
	pulse_durations[1]  <= pos2dur[maxl:0]; 			//M
	pulse_durations[2]  <= pos2pausedur[maxl:0];	//pause
	pulse_durations[3]  <= pos3dur[maxl:0]; 			//W-
	pulse_durations[4]  <= pos3pausedur[maxl:0];	//pause
	pulse_durations[5]  <= pos4dur[maxl:0]; 			//M
	pulse_durations[6]  <= pos4pausedur[maxl:0];	//pause
	
//	pulse_durations[7]  <= neg1dur[maxl:0]; 			//R-
//	pulse_durations[8]  <= neg1pausedur[maxl:0];	//pause
//	pulse_durations[9]  <= neg2dur[maxl:0]; 	   	//M
//	pulse_durations[10] <= neg2pausedur[maxl:0];	//pause
//	pulse_durations[11] <= neg3dur[maxl:0]; 			//W+
//	pulse_durations[12] <= neg3pausedur[maxl:0];	//pause
//	pulse_durations[13] <= neg4dur[maxl:0]; 	   	//M
//	pulse_durations[14] <= neg4pausedur[maxl:0];	//pause
end


reg is_new_pulse = 1'b0;
always@(posedge clk_in)
	begin
		
		trigger<=1'b0;
		verify_trigger<=1'b0;
		
		case (pulse_index)
		
			4'd0: begin
				signal_out<=8'b0000_0010;	//Reset (new pin)
			end
			4'd1: begin
				signal_out<=8'b0000_0000;
				is_new_pulse <= 1'b1;
			end
			
			4'd2: begin
				signal_out<=8'b0000_0100;	//M
				if(is_new_pulse) verify_trigger<=1'b1;
				is_new_pulse <= 1'b0;
			end
			4'd3: begin
				signal_out<=8'b0000_0000;
			end
			
			4'd4: begin
				signal_out<=8'b0001_0000;	//W-
			end
			4'd5: begin
				signal_out<=8'b0000_0000;
				is_new_pulse <= 1'b1;
			end
			
			4'd6: begin
				signal_out<=8'b0000_0001;	//M
				if(is_new_pulse) trigger<=1'b1;
				is_new_pulse <= 1'b0;
			end
			4'd7: begin
				signal_out<=8'b0000_0000;
			end
			
			//now the same pulses but with R and W upside down
			
			4'd8: begin
				signal_out<=8'b0010_0000;	//R-
			end
			4'd9: begin
				signal_out<=8'b0000_0000;
			end
			
			4'd10: begin
				signal_out<=8'b0000_0100;	//M
				//if(is_new_pulse) trigger<=1'b1;
			end
			4'd11: begin
				signal_out<=8'b0000_0000;
			end
			
			4'd12: begin
				signal_out<=8'b0000_0010;	//W+
			end
			4'd13: begin
				signal_out<=8'b0000_0000;
			end
			
			4'd14: begin
				signal_out<=8'b0000_0100;	//M
				//if(is_new_pulse) trigger<=1'b1;
			end
			4'd15: begin
				signal_out<=8'b1000_0001;
			end
			
			default: signal_out<=8'b1000_0001;
		endcase
		
		//old_pulse_index <= pulse_index;
		
		if(timer == currentpuldur) begin
			currentpuldur<=pulse_durations[pulse_index];
			if(pulse_index == 7) pulse_index <= 0;
			else pulse_index <= pulse_index + 1'd1;
			timer <= 0;			
		end
		else timer <= timer + 1'd1;

	end

endmodule