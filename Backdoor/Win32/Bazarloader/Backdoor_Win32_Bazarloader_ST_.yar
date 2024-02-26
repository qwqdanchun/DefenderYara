
rule Backdoor_Win32_Bazarloader_ST_{
	meta:
		description = "Backdoor:Win32/Bazarloader.ST!!Bazarloader.ST,SIGNATURE_TYPE_ARHSTR_EXT,0d 00 0d 00 09 00 00 03 00 "
		
	strings :
		$a_80_0 = {05 62 61 7a 61 72 00 } //bazar  03 00 
		$a_80_1 = {2e 62 61 7a 61 72 00 } //.bazar  03 00 
		$a_01_2 = {2e 64 6c 6c 00 53 74 61 72 74 46 75 6e 63 00 } //03 00 
		$a_01_3 = {77 73 32 5f 33 32 64 6c 6c 00 6e 74 64 6c 6c 2e 64 6c 6c 00 73 68 65 6c 6c 33 32 2e 64 6c 6c 00 77 69 6e 69 6e 65 74 2e 64 6c 6c 00 75 72 6c 6d 6f 6e 2e 64 6c 6c } //01 00 
		$a_03_4 = {b9 49 f7 02 78 90 02 08 e8 90 00 } //01 00 
		$a_03_5 = {b9 58 a4 53 e5 90 02 08 e8 90 00 } //01 00 
		$a_03_6 = {b9 10 e1 8a c3 90 02 08 e8 90 00 } //01 00 
		$a_03_7 = {b9 af b1 5c 94 90 02 08 e8 90 00 } //01 00 
		$a_03_8 = {b9 33 00 9e 95 90 02 08 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}