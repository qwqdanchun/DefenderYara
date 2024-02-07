
rule Trojan_WinNT_Regin_D_dha{
	meta:
		description = "Trojan:WinNT/Regin.D!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {c7 04 24 11 77 11 77 be 11 66 11 66 ff e0 } //02 00 
		$a_01_1 = {00 73 68 69 74 00 00 00 00 44 57 58 00 53 53 4d 00 } //01 00 
		$a_03_2 = {57 57 6a 64 68 90 01 04 6a 6e 90 00 } //02 00 
		$a_01_3 = {77 69 6e 73 74 61 30 00 70 86 75 31 e7 e1 e1 21 c6 ba e7 a8 3c 00 } //00 00 
		$a_00_4 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}