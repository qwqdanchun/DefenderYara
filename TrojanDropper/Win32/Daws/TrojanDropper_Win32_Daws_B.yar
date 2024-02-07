
rule TrojanDropper_Win32_Daws_B{
	meta:
		description = "TrojanDropper:Win32/Daws.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 73 65 6e 74 70 72 66 2e 64 6c 6c 00 } //01 00 
		$a_01_1 = {5c 66 61 6b 65 2e 62 61 74 00 } //01 00 
		$a_01_2 = {2d 74 73 68 61 63 6b 00 } //01 00  琭桳捡k
		$a_01_3 = {2c 50 72 6f 78 79 44 6c 6c 00 } //01 00  倬潲祸汄l
		$a_01_4 = {53 45 54 44 4c 4c 5f 58 36 34 00 } //01 00 
		$a_01_5 = {4e 54 43 4f 4f 4c 00 } //05 00 
		$a_03_6 = {b8 4d 5a 00 00 8b 9d 54 ff ff ff 0f b7 0b 3b c8 75 1e db 05 90 01 04 8b 9d 50 ff ff ff 8b 03 e8 90 01 04 de d9 df e0 9e 0f 84 05 00 00 00 e9 90 01 04 6a 00 31 c0 8b dc 53 89 03 8b c7 50 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}