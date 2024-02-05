
rule Trojan_Win32_Cameobe_A{
	meta:
		description = "Trojan:Win32/Cameobe.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 65 63 6f 6d 65 41 48 65 72 6f 5f } //01 00 
		$a_00_1 = {44 00 6f 00 41 00 6d 00 6e 00 42 00 61 00 72 00 72 00 65 00 6c 00 6c 00 52 00 6f 00 6c 00 6c 00 5f 00 } //01 00 
		$a_00_2 = {2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 44 00 6f 00 49 00 74 00 46 00 61 00 67 00 67 00 6f 00 74 00 } //01 00 
		$a_02_3 = {2f 77 65 62 68 70 3f 90 02 05 26 71 3d 90 02 05 6f 75 74 70 75 74 3d 6a 73 90 00 } //01 00 
		$a_02_4 = {47 45 54 20 2f 6d 6f 6e 2f 3f 64 3d 63 69 64 3d 90 02 10 26 61 69 64 3d 90 02 20 26 63 6f 64 65 3d 90 00 } //01 00 
		$a_00_5 = {22 2c 20 53 74 61 72 74 50 72 6f 74 } //01 00 
		$a_02_6 = {2f 75 31 2f 3f 64 3d 63 69 64 3d 90 02 10 26 61 69 64 3d 90 02 20 26 73 75 62 3d 90 00 } //01 00 
		$a_02_7 = {26 70 61 72 3d 90 02 05 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 05 5f 54 44 00 2f 65 90 00 } //03 00 
		$a_01_8 = {66 3d 05 00 76 0b 66 05 fb ff 66 89 44 24 1e eb 4d 66 8b 4c 24 1a 66 05 19 00 66 83 f9 02 66 89 44 24 1e 75 19 } //00 00 
	condition:
		any of ($a_*)
 
}