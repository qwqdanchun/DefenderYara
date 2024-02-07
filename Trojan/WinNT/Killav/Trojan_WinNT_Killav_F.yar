
rule Trojan_WinNT_Killav_F{
	meta:
		description = "Trojan:WinNT/Killav.F,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {7a 77 64 65 6c 65 74 65 66 69 6c 65 } //01 00  zwdeletefile
		$a_00_1 = {61 72 71 75 69 76 6f } //01 00  arquivo
		$a_00_2 = {61 76 61 73 74 } //01 00  avast
		$a_01_3 = {67 00 62 00 70 00 73 00 76 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_02_4 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 47 00 62 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //05 00 
		$a_01_5 = {59 8b 45 08 c7 40 34 e0 02 01 00 68 } //00 00 
	condition:
		any of ($a_*)
 
}