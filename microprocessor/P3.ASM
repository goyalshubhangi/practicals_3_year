.model small
	.386
	.data
	ARRAY DW 20 DUP (?)
	DATA1 dw 0000H

	msg db 10,13,"Enter the size of the array :: $"
	msg2 db 10,13,"Enter the array :: $"
	msg3 db 10,13,"The sorted array is :: $"

	.code
	.startup
	MOV AH,09
	MOV DX,OFFSET msg
	INT 21H
	MOV AH,01
	INT 21H
	SUB AL,30H
	MOV AH,0
	MOV CX,AX
	MOV DATA1,AX
	MOV AH,09
	MOV DX,OFFSET msg2
	INT 21H
	MOV AH,0
	MOV SI, 0
	MOV BX, OFFSET ARRAY

	L1: MOV DL, 0AH ; jump onto next line
	MOV AH, 02H
	INT 21H
	MOV DX, SI ; input element of the array
	MOV AH, 01H
	INT 21H
	SUB AL,30H
	MOV SI, DX
	MOV [BX + SI], AX
	INC SI
	LOOP L1
	MOV CX, DATA1
	MOV BX, OFFSET ARRAY
	MOV DI,CX

	L2: MOV CX, DATA1
	MOV SI, 0

	L3: MOV AL, [BX + SI]
	CMP AL, [BX + SI + 1]
	JL L4
	XCHG AL,[BX + SI + 1]
	MOV [BX + SI],AL

	L4: INC SI
	LOOP L3
	DEC DI
	JNZ L2
	MOV CX, DATA1
	MOV SI, 1
	MOV BX, OFFSET ARRAY
	MOV AH,09
	MOV DX,OFFSET msg3
	INT 21H

	L5: MOV DL, 0AH ; jump onto next line
	MOV AH, 02H
	INT 21H
	MOV DX, [BX + SI]
	INC SI
	ADD DL, 30H
	MOV AH, 02
	INT 21H
	LOOP L5

	END