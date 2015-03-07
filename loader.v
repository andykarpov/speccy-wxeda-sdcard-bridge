module loader (
	
	CLK, // global clock 48 MHz
	
	FLASH_CS_n, // pullup
	FLASH_DO,
	FLASH_CLK,
	FLASH_DI,
	
	EXT_CS_n, // PIN_2 = DS_G
	EXT_DO,	 // PIN_3 = DS_DP
	EXT_CLK,  // PIN_1 = DS_C
	EXT_DI    // PIN_141 = DS_D
);

input CLK;

output FLASH_CS_n;
output FLASH_CLK;
output FLASH_DI;
input FLASH_DO;

input EXT_CS_n;
input EXT_CLK;
input EXT_DI;
output EXT_DO;

assign FLASH_CS_n = EXT_CS_n;
assign FLASH_CLK = EXT_CLK;
assign FLASH_DI = EXT_DI;
assign EXT_DO = FLASH_DO;


/*output reg FLASH_CS_n;
output reg FLASH_CLK;
output reg FLASH_DI;
input FLASH_DO;

input EXT_CS_n;
input EXT_CLK;
input EXT_DI;
output reg EXT_DO;

always @(posedge(CLK)) begin
	FLASH_CS_n = EXT_CS_n;
	FLASH_CLK = EXT_CLK;
	FLASH_DI = EXT_DI;
	EXT_DO = FLASH_DO;
end
*/
endmodule
