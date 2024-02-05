
rule Trojan_Win32_Sefnit_gen_D{
	meta:
		description = "Trojan:Win32/Sefnit.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 52 00 00 00 00 00 2f 00 49 00 00 00 } //02 00 
		$a_01_1 = {74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 00 00 54 00 6f 00 72 00 00 00 6e 00 65 00 74 00 73 00 76 00 63 00 73 00 00 00 } //02 00 
		$a_03_2 = {8b 56 14 80 f1 90 01 01 88 0c 10 8a 90 90 90 01 04 8b 4e 14 80 f2 90 01 01 88 54 01 01 83 c0 02 83 f8 16 72 d9 90 00 } //02 00 
		$a_03_3 = {8b 4e 24 ba 90 01 02 00 00 66 33 90 90 90 01 04 83 c0 02 66 89 54 08 fe 83 f8 90 01 01 72 e4 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}