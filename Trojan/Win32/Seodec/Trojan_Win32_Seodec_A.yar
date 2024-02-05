
rule Trojan_Win32_Seodec_A{
	meta:
		description = "Trojan:Win32/Seodec.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 51 31 30 30 33 31 37 35 } //01 00 
		$a_01_1 = {2e 65 78 65 00 74 69 6d 65 } //01 00 
		$a_01_2 = {2f 6e 65 77 2f 64 78 63 2e 74 78 74 } //01 00 
		$a_01_3 = {2f 6e 65 77 2f 69 70 2e 61 73 70 } //01 00 
		$a_01_4 = {57 69 6e 48 74 74 70 2e 57 69 6e 48 74 74 70 52 65 71 75 65 73 74 2e 35 2e 31 00 47 45 54 } //01 00 
		$a_01_5 = {53 65 74 50 72 6f 78 79 00 53 65 74 50 72 6f 78 79 43 72 65 64 65 6e 74 69 61 6c 73 00 4f 70 65 6e 00 4f 70 74 69 6f 6e } //01 00 
		$a_03_6 = {26 73 69 64 3d 00 26 75 69 64 3d 00 26 69 64 3d 00 26 73 64 3d 76 65 72 90 02 02 2e 90 02 05 2d 00 26 6d 61 63 3d 00 3f 69 70 3d 90 02 40 3f 75 69 64 3d 90 00 } //00 00 
		$a_00_7 = {80 10 00 00 0a } //06 34 
	condition:
		any of ($a_*)
 
}