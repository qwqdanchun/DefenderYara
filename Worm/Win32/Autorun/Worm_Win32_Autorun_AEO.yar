
rule Worm_Win32_Autorun_AEO{
	meta:
		description = "Worm:Win32/Autorun.AEO,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {4b 65 79 4c 6f 67 67 65 72 } //01 00 
		$a_02_1 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 90 02 10 5b 00 61 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 90 02 10 4f 00 50 00 45 00 4e 00 3d 00 90 00 } //01 00 
		$a_00_2 = {2f 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 2e 00 70 00 68 00 70 00 3f 00 78 00 3d 00 } //01 00 
		$a_02_3 = {3a 00 5c 00 2a 00 2e 00 2a 00 90 02 10 3a 00 5c 00 4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 90 00 } //01 00 
		$a_02_4 = {26 00 75 00 6e 00 3d 00 90 02 08 26 00 65 00 78 00 65 00 3d 00 90 02 08 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}