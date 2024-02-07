
rule TrojanSpy_Win32_Bholog_C_bit{
	meta:
		description = "TrojanSpy:Win32/Bholog.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {6f 73 73 6b 90 02 0c 66 72 6d 4c 6f 67 69 6e 90 00 } //01 00 
		$a_01_1 = {5b 00 41 00 4c 00 54 00 55 00 50 00 5d 00 } //01 00  [ALTUP]
		$a_01_2 = {61 6c 74 61 66 5f 62 68 61 69 00 } //01 00 
		$a_01_3 = {4c 6f 67 69 6e 53 75 63 63 65 65 64 65 64 00 } //01 00 
		$a_01_4 = {50 43 3a 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b } //01 00  PC:&nbsp;&nbsp;&nbsp;
		$a_01_5 = {6d 65 72 65 20 6b 6f 20 64 69 6b 68 61 6f } //01 00  mere ko dikhao
		$a_01_6 = {73 65 6e 64 6d 65 79 61 72 00 } //01 00  敳摮敭慹r
		$a_01_7 = {4d 6f 64 75 6c 65 31 6a 00 } //00 00 
	condition:
		any of ($a_*)
 
}