
rule PWS_Win32_Lolyda_AS{
	meta:
		description = "PWS:Win32/Lolyda.AS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {2b de 8d 83 90 01 04 8b c8 c6 06 e9 88 46 01 8b d0 c1 e9 08 88 4e 02 90 00 } //01 00 
		$a_01_1 = {26 6d 62 6d 3d 00 } //01 00 
		$a_01_2 = {26 7a 74 3d 77 61 69 74 6d 62 68 00 } //01 00 
		$a_01_3 = {61 63 74 69 6f 6e 3d 75 70 26 7a 74 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}