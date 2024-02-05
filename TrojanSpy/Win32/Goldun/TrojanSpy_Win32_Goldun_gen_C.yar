
rule TrojanSpy_Win32_Goldun_gen_C{
	meta:
		description = "TrojanSpy:Win32/Goldun.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 63 61 73 53 65 72 76 2e 65 78 65 00 00 00 00 67 63 61 73 44 74 53 65 72 76 2e 65 78 65 00 00 47 49 41 4e 54 41 6e 74 69 53 70 79 77 61 72 65 4d 61 69 6e 2e 65 78 65 00 00 00 00 } //01 00 
		$a_01_1 = {7a 00 00 00 26 6e 6f 77 00 00 00 00 26 6e 6e 3d 31 26 72 3d 00 00 00 00 31 2e 39 2e } //01 00 
		$a_01_2 = {26 76 65 72 3d 00 00 00 3f 70 68 69 64 3d 00 00 25 64 00 00 69 6e 73 74 61 6c 6c 65 72 5f 74 69 6d 65 } //01 00 
		$a_01_3 = {7a 75 7a 75 00 00 00 00 65 77 75 69 79 75 77 65 79 75 00 00 52 54 5f 44 4c 4c } //01 00 
		$a_01_4 = {70 68 69 64 00 00 00 00 53 6f 66 74 77 61 72 65 5c 57 69 6e 64 6f 77 73 00 00 00 00 63 3a 5c 70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 41 6e 74 69 53 70 79 77 61 72 65 5c 2a 2e 67 63 64 } //01 00 
		$a_01_5 = {53 65 72 76 53 74 61 74 65 00 00 00 53 6f 66 74 77 61 72 65 5c 47 49 41 4e 54 43 6f 6d 70 61 6e 79 5c 41 6e 74 69 53 70 79 77 61 72 65 00 00 00 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 00 00 00 00 6f 70 65 6e 00 00 00 00 72 65 67 73 76 72 33 32 } //01 00 
		$a_00_6 = {3b fb 74 3d 53 68 80 00 00 00 6a 02 53 6a 01 68 00 00 00 40 68 f0 11 40 00 ff 15 34 10 40 00 8b f0 83 fe ff 75 04 32 c0 eb 19 } //00 00 
	condition:
		any of ($a_*)
 
}