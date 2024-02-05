
rule Trojan_BAT_DownPast_J_ibt{
	meta:
		description = "Trojan:BAT/DownPast.J!ibt,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {0b 07 0c 08 28 90 01 01 00 00 0a 28 90 01 01 00 00 06 0d 28 90 01 01 00 00 0a 13 04 72 90 01 02 00 70 72 90 01 02 00 70 72 90 01 01 00 00 70 90 01 02 00 00 0a 72 90 01 02 00 70 72 90 01 01 00 00 70 6f 90 01 01 00 00 0a 13 05 72 90 01 02 00 70 72 90 01 02 00 70 72 90 01 01 00 00 70 90 01 02 00 00 0a 72 90 01 02 00 70 72 90 01 01 00 00 70 6f 90 01 01 00 00 0a 13 06 72 90 01 02 00 70 72 90 01 02 00 70 72 90 01 01 00 00 70 90 01 02 00 00 0a 72 90 01 02 00 70 72 90 01 01 00 00 70 6f 90 01 01 00 00 0a 13 07 72 90 01 02 00 70 90 00 } //01 00 
		$a_00_1 = {2f 00 77 00 61 00 72 00 2f 00 6d 00 6f 00 63 00 2e 00 6e 00 69 00 62 00 65 00 74 00 73 00 61 00 70 00 2f 00 2f 00 3a 00 73 00 70 00 74 00 74 00 68 00 } //01 00 
		$a_00_2 = {53 74 72 52 65 76 65 72 73 65 } //01 00 
		$a_00_3 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00 
		$a_00_4 = {4c 61 74 65 43 61 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}