
rule Trojan_Win32_Puzlice_A{
	meta:
		description = "Trojan:Win32/Puzlice.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 46 00 54 00 45 00 52 00 44 00 4f 00 57 00 4e 00 4c 00 4f 00 41 00 44 00 } //01 00 
		$a_01_1 = {26 00 50 00 75 00 62 00 6c 00 69 00 63 00 65 00 72 00 3d 00 } //01 00 
		$a_01_2 = {7a 00 68 00 2d 00 63 00 6e 00 2c 00 7a 00 68 00 3b 00 71 00 } //01 00 
		$a_01_3 = {57 00 69 00 6e 00 33 00 32 00 5f 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 41 00 64 00 61 00 70 00 74 00 65 00 72 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_03_4 = {3a 00 38 00 38 90 02 06 00 0e 00 00 00 2f 00 70 00 36 00 2e 00 61 00 73 00 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}