
rule Worm_Win32_Autorun_OZ{
	meta:
		description = "Worm:Win32/Autorun.OZ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_02_0 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 90 02 11 5b 61 75 74 6f 72 75 6e 5d 90 02 11 73 68 65 6c 6c 65 78 65 63 75 74 65 3d 52 45 43 59 43 4c 45 90 02 20 73 68 65 6c 6c 3d 73 74 61 72 74 90 02 11 73 68 65 6c 6c 5c 73 74 61 72 74 5c 63 6f 6d 6d 61 6e 64 3d 52 45 43 59 43 4c 45 90 00 } //01 00 
		$a_00_1 = {44 6f 63 75 6d 65 6e 74 73 20 6f 66 } //01 00 
		$a_00_2 = {4d 75 73 69 63 20 6f 66 } //01 00 
		$a_02_3 = {44 69 73 61 62 6c 65 54 61 73 6b 6d 67 72 90 02 10 44 69 73 61 62 6c 65 52 65 67 69 73 74 72 79 54 6f 6f 6c 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}