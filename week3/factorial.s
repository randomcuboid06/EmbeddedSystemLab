; FACTORIAL OF 5 == 120 or 0x00000078

		AREA facto,CODE,READONLY
		ENTRY
		EXPORT __main

__main
		MOV R0,#0x00000005; Factorial of 5
		MOV R5,#0x00000001;
loop
		MUL R5,R0,R5;
		SUB R0,#0x00000001;
		CMP R0,#0x00000000
		BNE loop; BNE -> Branch Not Equal
STOP B STOP
		AREA MulRes,DATA,READWRITE
Result DCD 0X00;
		END
			
; DONT USE ANY SPACES LIKE MUL R1, R2; do it like this MUL R1,R2;
