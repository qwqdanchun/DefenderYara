
rule PWS_Win32_Frethog_BP{
	meta:
		description = "PWS:Win32/Frethog.BP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {26 68 61 76 65 6d 69 62 61 6f 3d 00 26 70 61 73 73 77 6f 72 64 32 3d 00 26 6d 6f 6e 65 79 3d 00 26 6c 65 76 65 6c } //01 00 
		$a_00_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 64 6e 66 2e 69 6e 69 } //01 00 
		$a_00_2 = {6c 69 6e 2e 61 73 70 00 75 70 66 69 6c 65 2e 61 73 70 00 } //01 00 
		$a_03_3 = {6d c6 44 24 90 01 01 69 c6 44 24 90 01 01 62 c6 44 24 90 01 01 6f c6 44 24 90 01 01 3d 88 5c 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}