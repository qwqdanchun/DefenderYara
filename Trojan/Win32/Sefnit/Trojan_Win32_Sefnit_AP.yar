
rule Trojan_Win32_Sefnit_AP{
	meta:
		description = "Trojan:Win32/Sefnit.AP,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {49 3b c5 1b d2 23 54 24 90 01 01 2b d5 03 d0 8a 14 3a 88 14 38 90 09 01 00 90 90 90 00 } //01 00 
		$a_03_1 = {56 8b cf 80 f3 90 01 01 e8 90 01 04 46 88 18 90 01 3f 8b cf 80 f3 90 1b 00 90 01 47 8b cf 80 f3 90 1b 00 90 01 47 8b cf 80 f3 90 00 } //01 00 
		$a_02_2 = {5e 8a 14 01 80 f2 90 01 01 88 10 40 4e 90 01 4e 8a 14 01 80 f2 90 1b 00 90 01 52 8a 14 01 80 f2 90 1b 00 90 01 52 8a 14 01 80 f2 90 1b 00 90 00 } //0a 00 
		$a_00_3 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 4e 00 61 00 6d 00 65 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //00 00  Windows Internet Name Service
	condition:
		any of ($a_*)
 
}