
rule Trojan_Win32_FormBook_BO_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 49 00 67 00 46 00 6b 00 30 00 6f 00 44 00 7a 00 33 00 39 00 50 00 55 00 77 00 74 00 57 00 77 00 31 00 6a 00 4b 00 76 00 66 00 6d 00 44 00 32 00 33 00 32 00 } //01 00  oIgFk0oDz39PUwtWw1jKvfmD232
		$a_01_1 = {52 00 6c 00 31 00 74 00 50 00 36 00 31 00 32 00 31 00 } //01 00  Rl1tP6121
		$a_01_2 = {52 00 53 00 79 00 75 00 62 00 34 00 34 00 } //01 00  RSyub44
		$a_01_3 = {6e 00 4b 00 6d 00 6a 00 68 00 6a 00 62 00 43 00 6d 00 70 00 31 00 37 00 32 00 } //01 00  nKmjhjbCmp172
		$a_01_4 = {64 00 69 00 55 00 64 00 4f 00 49 00 31 00 33 00 36 00 } //01 00  diUdOI136
		$a_00_5 = {62 72 75 67 65 72 6f 72 67 61 6e 69 73 61 74 69 6f 6e 65 6e 73 } //01 00  brugerorganisationens
		$a_00_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}