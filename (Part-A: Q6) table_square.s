		AREA squ,CODE,READONLY
		ENTRY
		EXPORT __main
TABLE   DCD 0X00; 0^2
		DCD 0X01; 1^2
		DCD 0X04; 2^2
		DCD 0X09; 3^2
		DCD 0X10; 4^2 -> 16 (decimal) -> 10 (hexadecimal)
		DCD 0X19; 5^2 
		DCD 0X24; 6^2
		DCD 0X31; 7^2
		DCD 0X40; 8^2
		DCD 0X51; 9^2
		DCD 0X64; 10^2

__main
		LDR R0,=TABLE;
		MOV R1,#5; WE WANT OT FIND 5^2
		MOV R2,R1,LSL#0X02;
		ADD R0,R2;
		LDR R6,[R0];
STOP B STOP
		AREA squ,DATA,READWRITE
		END
