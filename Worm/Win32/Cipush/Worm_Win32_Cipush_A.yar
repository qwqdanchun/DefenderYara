
rule Worm_Win32_Cipush_A{
	meta:
		description = "Worm:Win32/Cipush.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {59 00 61 00 68 00 6f 00 6f 00 42 00 75 00 64 00 64 00 79 00 4d 00 61 00 69 00 6e 00 } //01 00 
		$a_00_1 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_00_2 = {5b 00 50 00 61 00 67 00 65 00 55 00 70 00 5d 00 } //01 00 
		$a_01_3 = {25 00 73 00 70 00 61 00 6d 00 25 00 } //01 00 
		$a_01_4 = {6b 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_5 = {73 00 65 00 6f 00 75 00 72 00 6c 00 } //01 00 
		$a_01_6 = {75 73 73 79 43 6c 6f 73 65 } //01 00 
		$a_03_7 = {00 64 00 75 00 6d 00 70 00 65 00 72 00 2e 00 65 00 78 00 65 00 00 90 02 4f 00 66 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 00 90 00 } //00 00 
		$a_00_8 = {87 10 00 00 } //3c f3 
	condition:
		any of ($a_*)
 
}