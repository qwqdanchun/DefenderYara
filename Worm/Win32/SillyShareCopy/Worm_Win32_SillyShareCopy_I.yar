
rule Worm_Win32_SillyShareCopy_I{
	meta:
		description = "Worm:Win32/SillyShareCopy.I,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 41 55 54 4f 52 55 4e 5d } //01 00 
		$a_01_1 = {74 78 74 66 69 6c 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //01 00 
		$a_01_2 = {52 65 63 76 46 69 6c 65 20 6f 76 65 72 21 } //01 00 
		$a_01_3 = {53 75 62 6a 65 63 74 3a 20 25 73 } //01 00 
		$a_01_4 = {4e 75 6d 62 65 72 3a 20 25 64 3a 48 61 72 64 77 61 72 65 } //01 00 
		$a_01_5 = {53 63 72 65 65 6e 3a 20 25 64 2a 25 64 } //00 00 
	condition:
		any of ($a_*)
 
}