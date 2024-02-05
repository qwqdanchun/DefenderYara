
rule Backdoor_Win32_Vawtrak_O{
	meta:
		description = "Backdoor:Win32/Vawtrak.O,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 04 01 6d 4e c6 41 05 39 30 00 00 6a 04 59 6b c9 00 } //01 00 
		$a_01_1 = {32 84 3e 0a 02 00 00 88 44 2e ff 46 59 83 fe 40 72 e4 } //01 00 
		$a_01_2 = {8b 54 24 18 80 3a 4d 75 06 80 7a 01 5a 74 21 } //01 00 
		$a_03_3 = {eb 1d 6a 3a 50 ff 15 90 01 04 85 c0 74 ef 8d 4d fc 51 ff d0 90 00 } //01 00 
		$a_01_4 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 2f 69 3a 22 25 73 22 20 22 25 73 } //01 00 
		$a_01_5 = {50 49 44 3a 20 25 75 20 5b 25 30 2e 32 75 3a 25 30 2e 32 75 3a 25 30 2e 32 75 5d } //00 00 
	condition:
		any of ($a_*)
 
}