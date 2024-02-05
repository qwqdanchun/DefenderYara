
rule PWS_Win32_Vkphiag_A{
	meta:
		description = "PWS:Win32/Vkphiag.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 6c 56 58 5a 46 4d 55 71 79 72 6e 41 42 70 38 6e 63 75 55 } //01 00 
		$a_01_1 = {73 74 75 62 2e 70 68 6f 74 6f } //01 00 
		$a_03_2 = {5f 65 6e 63 72 79 70 74 65 64 00 90 02 20 2e 65 78 65 90 02 20 68 74 74 70 3a 2f 2f 90 05 03 03 30 2d 39 2e 90 05 03 03 30 2d 39 2e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}