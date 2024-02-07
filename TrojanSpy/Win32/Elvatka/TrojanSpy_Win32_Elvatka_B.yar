
rule TrojanSpy_Win32_Elvatka_B{
	meta:
		description = "TrojanSpy:Win32/Elvatka.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {8a 04 16 32 c1 34 90 01 01 88 02 41 42 66 83 f9 90 01 01 72 ef 90 00 } //01 00 
		$a_01_1 = {55 70 64 61 74 65 49 6d 70 6f 72 74 54 61 62 6c 65 41 64 64 72 65 73 73 20 6f 6b 21 00 } //01 00 
		$a_01_2 = {62 65 67 69 6e 20 43 72 65 61 74 65 46 69 6c 65 41 20 70 61 74 68 20 69 73 20 25 73 21 00 } //01 00 
		$a_00_3 = {64 75 2e 70 68 69 73 74 61 72 2e 70 77 } //00 00  du.phistar.pw
		$a_00_4 = {5d 04 00 00 fb } //26 03 
	condition:
		any of ($a_*)
 
}