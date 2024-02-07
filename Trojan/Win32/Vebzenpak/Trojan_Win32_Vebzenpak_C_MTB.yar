
rule Trojan_Win32_Vebzenpak_C_MTB{
	meta:
		description = "Trojan:Win32/Vebzenpak.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 62 00 39 00 33 00 50 00 6a 00 50 00 31 00 61 00 4d 00 61 00 31 00 6c 00 55 00 5a 00 61 00 6c 00 51 00 48 00 4b 00 41 00 6a 00 53 00 49 00 43 00 4e 00 56 00 69 00 58 00 4e 00 62 00 33 00 67 00 31 00 39 00 31 00 } //01 00  pb93PjP1aMa1lUZalQHKAjSICNViXNb3g191
		$a_01_1 = {51 00 6d 00 44 00 78 00 37 00 63 00 71 00 41 00 30 00 49 00 42 00 39 00 69 00 36 00 56 00 30 00 77 00 6c 00 4b 00 61 00 72 00 33 00 34 00 } //01 00  QmDx7cqA0IB9i6V0wlKar34
		$a_00_2 = {47 73 38 4c 48 73 7a 4a 48 73 } //01 00  Gs8LHszJHs
		$a_00_3 = {73 42 73 70 4b 42 73 } //01 00  sBspKBs
		$a_00_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}