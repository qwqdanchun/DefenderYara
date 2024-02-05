
rule TrojanSpy_Win32_Spyhoo_A{
	meta:
		description = "TrojanSpy:Win32/Spyhoo.A,SIGNATURE_TYPE_PEHSTR,06 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {26 00 66 00 72 00 6f 00 6d 00 3d 00 53 00 70 00 79 00 59 00 61 00 68 00 6f 00 6f 00 40 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 26 00 73 00 75 00 62 00 6a 00 65 00 63 00 74 00 3d 00 59 00 2e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_1 = {59 00 61 00 68 00 6f 00 6f 00 42 00 75 00 64 00 64 00 79 00 4d 00 61 00 69 00 6e 00 } //01 00 
		$a_01_2 = {41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 4c 00 69 00 73 00 74 00 00 00 00 00 1e 00 00 00 2e 00 65 00 78 00 65 00 3a 00 2a 00 3a 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 } //01 00 
		$a_01_3 = {4c 6f 6f 6b 75 70 41 63 63 6f 75 6e 74 4e 61 6d 65 41 } //01 00 
		$a_01_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}