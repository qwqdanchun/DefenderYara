
rule TrojanDropper_Win32_Tibdef_A{
	meta:
		description = "TrojanDropper:Win32/Tibdef.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 3a 5c 50 72 6f 6a 65 6b 74 79 5c 45 76 75 6c 53 6f 66 74 5c 54 69 62 69 53 61 76 65 50 61 73 73 5c 50 72 6f 67 72 61 6d 79 5c 53 74 75 62 20 56 49 53 55 41 4c 5c 52 65 6c 65 61 73 65 5c 53 74 75 62 20 56 49 53 55 41 4c 2e 70 64 62 00 } //01 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 5c 00 } //01 00 
		$a_01_2 = {44 65 73 69 6e 67 2e 65 78 65 00 } //01 00 
		$a_01_3 = {61 6c 6b 61 72 65 2e 66 6f 6b 00 } //00 00 
	condition:
		any of ($a_*)
 
}