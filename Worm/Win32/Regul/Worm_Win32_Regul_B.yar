
rule Worm_Win32_Regul_B{
	meta:
		description = "Worm:Win32/Regul.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 72 6e 6c 6e 2e 66 6e 65 00 00 00 6b 72 6e 6c 6e 2e 66 6e 72 00 } //01 00 
		$a_01_1 = {2e 63 6e 2f 75 6c 2e 68 74 6d 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_2 = {00 2e 63 6f 6d 2f 75 6c 2e 68 74 6d 00 } //01 00 
		$a_01_3 = {65 78 70 6c 6f 72 65 72 20 00 2e 65 78 65 00 72 65 73 74 61 72 74 00 72 65 67 } //01 00 
		$a_01_4 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 00 6f 70 65 6e 00 41 75 74 6f 52 75 6e } //00 00 
	condition:
		any of ($a_*)
 
}