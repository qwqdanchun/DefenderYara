
rule Trojan_Win32_Emotet_DHC_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {b1 a6 8a 54 24 2f 80 f2 61 88 54 24 2f 8b 74 24 14 01 f6 89 74 24 28 2a 4c 24 2f 8b 74 24 04 8a 14 06 88 4c 24 2f 8b 7c 24 0c 88 14 07 } //01 00 
		$a_01_1 = {73 65 6c 66 2e 65 78 65 } //01 00  self.exe
		$a_01_2 = {64 3a 5c 75 73 72 5c 72 6f 64 5c 72 6e 72 2e 70 64 62 } //01 00  d:\usr\rod\rnr.pdb
		$a_01_3 = {68 00 61 00 63 00 6b 00 65 00 72 00 73 00 61 00 6c 00 74 00 68 00 6f 00 75 00 67 00 68 00 5a 00 69 00 6e 00 72 00 46 00 64 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 59 00 44 00 } //01 00  hackersalthoughZinrFdGoogleYD
		$a_01_4 = {74 00 68 00 65 00 72 00 65 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 29 00 2c 00 67 00 } //01 00  theremalware),g
		$a_01_5 = {6a 00 6f 00 66 00 79 00 34 00 77 00 61 00 73 00 } //01 00  jofy4was
		$a_01_6 = {4e 00 77 00 44 00 47 00 71 00 63 00 4e 00 53 00 69 00 72 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 } //00 00  NwDGqcNSirbrowser
	condition:
		any of ($a_*)
 
}