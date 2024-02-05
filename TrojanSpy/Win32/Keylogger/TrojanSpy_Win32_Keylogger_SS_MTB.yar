
rule TrojanSpy_Win32_Keylogger_SS_MTB{
	meta:
		description = "TrojanSpy:Win32/Keylogger.SS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 00 70 00 61 00 72 00 6b 00 78 00 } //01 00 
		$a_01_1 = {53 00 20 00 20 00 75 00 20 00 20 00 72 00 20 00 20 00 65 00 } //01 00 
		$a_01_2 = {73 00 61 00 76 00 65 00 72 00 62 00 72 00 6f 00 } //01 00 
		$a_01_3 = {61 00 39 00 65 00 77 00 36 00 34 00 6a 00 73 00 7a 00 6a 00 68 00 37 00 30 00 67 00 74 00 39 00 30 00 39 00 63 00 30 00 6a 00 69 00 39 00 6c 00 6e 00 32 00 62 00 6d 00 31 00 75 00 6d 00 32 00 37 00 69 00 30 00 30 00 61 00 33 00 68 00 65 00 70 00 6a 00 31 00 34 00 34 00 65 00 6d 00 74 00 68 00 74 00 } //01 00 
		$a_01_4 = {6f 00 79 00 37 00 6f 00 65 00 6c 00 30 00 31 00 34 00 70 00 67 00 78 00 33 00 72 00 6e 00 6d 00 67 00 6f 00 31 00 66 00 6c 00 6f 00 79 00 74 00 74 00 34 00 6f 00 38 00 65 00 67 00 68 00 61 00 70 00 7a 00 75 00 6f 00 6e 00 37 00 30 00 66 00 68 00 72 00 75 00 30 00 6c 00 6e 00 6c 00 73 00 76 00 6c 00 } //01 00 
		$a_01_5 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 54 00 20 00 31 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00 
		$a_01_6 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_01_7 = {4c 6f 67 67 65 72 } //01 00 
		$a_01_8 = {6d 75 66 75 63 6b 72 } //00 00 
	condition:
		any of ($a_*)
 
}