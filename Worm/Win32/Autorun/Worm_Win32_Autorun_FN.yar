
rule Worm_Win32_Autorun_FN{
	meta:
		description = "Worm:Win32/Autorun.FN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_11_0 = {75 74 6f 72 75 6e 2e 69 6e 66 00 01 } //00 0b 
		$a_44_1 = {72 65 63 74 58 2e 62 61 74 01 00 2d 11 4e 2d 31 2d } //35 2d 
		$a_31_2 = {31 38 39 35 32 32 32 32 37 39 2d 33 31 32 39 38 33 31 39 39 35 2d 33 38 39 32 32 35 35 35 31 2d 36 30 30 33 00 00 87 10 00 00 9b 62 32 c6 46 0e 28 63 } //09 4f 
	condition:
		any of ($a_*)
 
}