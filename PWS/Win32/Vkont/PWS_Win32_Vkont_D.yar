
rule PWS_Win32_Vkont_D{
	meta:
		description = "PWS:Win32/Vkont.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 00 65 00 6d 00 69 00 78 00 73 00 69 00 64 00 3d 00 } //01 00 
		$a_03_1 = {2e 00 75 00 63 00 6f 00 7a 00 2e 00 64 00 65 00 2f 00 90 01 02 2e 00 74 00 78 00 74 00 90 00 } //01 00 
		$a_01_2 = {62 00 65 00 6e 00 28 00 2e 00 2a 00 3f 00 29 00 65 00 6e 00 64 00 } //01 00 
		$a_01_3 = {66 75 6e 6b } //00 00 
	condition:
		any of ($a_*)
 
}