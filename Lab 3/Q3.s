.global _start
_start:
	
	//Simple EOR/XOR encryption / decryption
	
	//Load Word to be Encrypted
	MOVW R0, #0x5244        @ Load 'R','D' into lower 2 bytes
    MOVT R0, #0x574F        @ Load 'W','O' into upper 2 bytes
	
	//Load Byte Key
	MOVW R1, #0xC491        @ Lower 2 bytes of key
    MOVT R1, #0xAB11        @ Upper 2 bytes of key
	
	//Encrypt Word with Key
	EOR R2, R0, R1			@ R2 = R0 XOR R1 (encrypted message)
	
	//Decrypt Word with Key
	EOR R3, R2, R1          @ R3 = R2 XOR R1 (decrypted message)
	