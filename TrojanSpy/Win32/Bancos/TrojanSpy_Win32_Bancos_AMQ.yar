
rule TrojanSpy_Win32_Bancos_AMQ{
	meta:
		description = "TrojanSpy:Win32/Bancos.AMQ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {6a 00 5f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 00 00 } //01 00 
		$a_01_1 = {66 00 72 00 6d 00 53 00 65 00 6e 00 68 00 61 00 00 00 } //01 00 
		$a_01_2 = {73 00 65 00 6e 00 68 00 61 00 43 00 6f 00 6e 00 74 00 61 00 00 00 } //01 00 
		$a_01_3 = {6f 00 49 00 45 00 5f 00 48 00 54 00 4d 00 64 00 6f 00 63 00 5f 00 61 00 5f 00 6f 00 6e 00 6d 00 6f 00 75 00 73 00 65 00 64 00 6f 00 77 00 6e 00 00 00 } //01 00 
		$a_01_4 = {4e 00 6f 00 74 00 57 00 65 00 6c 00 63 00 6f 00 6d 00 65 00 00 00 } //01 00 
		$a_01_5 = {63 00 6f 00 64 00 69 00 67 00 6f 00 56 00 65 00 72 00 69 00 66 00 69 00 63 00 61 00 63 00 61 00 6f 00 00 00 } //01 00 
		$a_01_6 = {75 00 73 00 75 00 61 00 72 00 69 00 6f 00 00 00 } //01 00 
		$a_01_7 = {4c 00 6f 00 61 00 64 00 46 00 72 00 6f 00 6d 00 46 00 69 00 6c 00 65 00 00 00 } //01 00 
		$a_01_8 = {73 00 65 00 6c 00 6f 00 5f 00 6f 00 6b 00 00 00 } //01 00 
		$a_01_9 = {6e 00 75 00 6d 00 65 00 72 00 6f 00 43 00 6f 00 6e 00 74 00 72 00 61 00 74 00 6f 00 4f 00 72 00 69 00 67 00 65 00 6d 00 00 00 } //01 00 
		$a_01_10 = {73 00 65 00 6e 00 68 00 61 00 74 00 6f 00 6b 00 65 00 6e 00 00 00 } //01 00 
		$a_01_11 = {6f 00 6e 00 62 00 65 00 66 00 6f 00 72 00 65 00 75 00 6e 00 6c 00 6f 00 61 00 64 00 00 00 } //01 00 
		$a_01_12 = {70 00 61 00 72 00 65 00 6e 00 74 00 2e 00 6d 00 6f 00 73 00 74 00 72 00 61 00 41 00 67 00 75 00 61 00 72 00 64 00 65 00 28 00 29 00 } //00 00 
		$a_00_13 = {7e 15 00 00 cb } //51 b4 
	condition:
		any of ($a_*)
 
}