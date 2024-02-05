
rule Worm_Win32_Goosky_A{
	meta:
		description = "Worm:Win32/Goosky.A,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {32 4d ff fe 45 ff 88 0e 46 38 45 ff 72 e6 } //05 00 
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 53 00 6b 00 79 00 70 00 65 00 5c 00 50 00 68 00 6f 00 6e 00 65 00 5c 00 55 00 49 00 } //05 00 
		$a_00_2 = {28 00 66 00 61 00 63 00 65 00 70 00 61 00 6c 00 6d 00 29 00 } //01 00 
		$a_00_3 = {6c 00 61 00 72 00 61 00 77 00 61 00 6e 00 67 00 20 00 69 00 74 00 6f 00 } //01 00 
		$a_00_4 = {74 00 68 00 69 00 73 00 20 00 70 00 68 00 6f 00 74 00 6f 00 } //01 00 
		$a_00_5 = {64 00 65 00 74 00 74 00 61 00 20 00 66 00 6f 00 74 00 6f 00 } //01 00 
		$a_00_6 = {41 00 6c 00 6c 00 61 00 68 00 20 00 41 00 6c 00 6c 00 61 00 68 00 } //00 00 
		$a_00_7 = {87 10 00 00 cc 80 85 11 ec 65 07 5a 26 1d 90 41 68 25 06 00 87 } //10 00 
	condition:
		any of ($a_*)
 
}