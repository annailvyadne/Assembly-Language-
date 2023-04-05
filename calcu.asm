.MODEL SMALL
.STACK 100H
.386
.DATA
MSG1 DB 'Enter 1 for Addition$'
MSG2 DB 10,13,'Enter 2 for Subtraction$'
MSG3 DB 10,13,'Enter 3 for Multiplication$'
MSG4 DB 10,13,'Enter 4 for Division$'
MSG5 DB 10,13,'Choose number:$'
MSG6 DB 10,13,10,13,'Enter 1st Number:$'
MSG7 DB 10,13,'Enter 2nd Number:$'
MSG8 DB 10,13,10,13,'Results:$'
MSG  DB 10,13,10,13,'** Thank you for using this program! **$'

NUM1 DB ?
NUM2 DB ?
RESULT DB ?

.CODE
MAIN		PROC
		MOV AX,@DATA
		MOV DS,AX

		LEA DX,MSG1		;Enter 1 for Addition
		MOV AH,9
		INT 21H

		LEA DX,MSG2		;Enter 2 for Subtraction
		MOV AH,9
		INT 21H

		LEA DX,MSG3		;Enter 3 for Multiplication
		MOV AH,9
		INT 21H

		LEA DX,MSG4		;Enter 4 for Division
		MOV AH,9
		INT 21H

		LEA DX,MSG5		;Choose Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		MOV BH,AL
		SUB BH,48

		CMP BH,1
		JE ADDITION

		CMP BH,2
		JE SUBTRACTION

		CMP BH,3
		JE MULTIPLICATION

		CMP BH,4
		JE DIVISION

		ADDITION:
		LEA DX,MSG6		;Enter 1st Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		MOV BL,AL

		LEA DX,MSG7		;Enter 2nd Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		MOV CL,AL

		ADD AL,BL
		MOV AH,0
		AAA

		MOV BX,AX
		ADD BH,48
		ADD BL,48

		LEA DX,MSG8		;Result
		MOV AH,9
		INT 21H

		MOV AH,2
		MOV DL,BH
		INT 21H

		MOV AH,2
		MOV DL,BL
		INT 21H


		JMP EXIT_P

		SUBTRACTION:
		LEA DX,MSG6		;Enter 1st Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		MOV BL,AL

		LEA DX,MSG7		;Enter 2nd Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		MOV CL,AL

		SUB BL,CL
		ADD BL,48

		LEA DX,MSG8		;Result
		MOV AH,9
		INT 21H

		MOV AH,2
		MOV DL,BL
		INT 21H


		JMP EXIT_P

		MULTIPLICATION:
		LEA DX,MSG6		;Enter 1st Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		SUB AL,48
		MOV NUM1,AL

		LEA DX,MSG7		;Enter 2nd Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		SUB AL,48
		MOV NUM2,AL

		MUL NUM1
		MOV RESULT,AL
		AAM

		ADD AH,48
		ADD AL,48
	
		MOV BX,AX

		LEA DX,MSG8		;Result
		MOV AH,9
		INT 21H

		MOV AH,2
		MOV DL,BH
		INT 21H

		MOV AH,2
		MOV DL,BL
		INT 21H

		JMP EXIT_P

		DIVISION:
		LEA DX,MSG6		;Enter 1st Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		SUB AL,48
		MOV NUM1,AL

		LEA DX,MSG7		;Enter 2nd Number
		MOV AH,9
		INT 21H

		MOV AH,1
		INT 21H
		SUB AL,48
		MOV NUM2,AL

		MOV CL,NUM1
		MOV CH,00
		MOV AX,CX

		DIV NUM2
		MOV RESULT,AL
		MOV AH,00
		AAD

		ADD AH,48
		ADD AL,48

		MOV BX,AX

		LEA DX,MSG8		;Result
		MOV AH,9
		INT 21H

		MOV AH,2
		MOV DL,BH
		INT 21H

		MOV AH,2
		MOV DL,BL
		INT 21H

		JMP EXIT_P

		EXIT_P:
		LEA DX,MSG		;Thank you for using this program
		MOV AH,9
		INT 21H

		EXIT:
		MOV AH,4CH
		INT 21H

MAIN ENDP
END MAIN


