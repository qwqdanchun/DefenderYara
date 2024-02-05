
rule TrojanDropper_Win32_Alphabet{
	meta:
		description = "TrojanDropper:Win32/Alphabet,SIGNATURE_TYPE_PEHSTR,07 00 05 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 63 6f 66 74 } //01 00 
		$a_01_1 = {63 3a 5c 74 65 6d 70 32 2e 62 61 74 } //01 00 
		$a_01_2 = {62 66 78 74 72 61 79 2e 65 78 65 } //01 00 
		$a_01_3 = {77 65 62 61 6c 2e 65 78 65 } //01 00 
		$a_01_4 = {73 6d 61 6e 61 67 65 72 } //01 00 
		$a_01_5 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 61 76 70 2e 65 78 65 } //01 00 
		$a_01_6 = {5c 61 76 70 2e 65 78 65 } //01 00 
		$a_01_7 = {25 73 5c 25 6c 64 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}