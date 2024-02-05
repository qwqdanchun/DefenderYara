
rule Trojan_BAT_Seraph_AAOD_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAOD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {11 03 72 01 00 00 70 28 90 01 01 00 00 0a 72 33 00 00 70 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 13 10 90 00 } //01 00 
		$a_01_1 = {58 00 45 00 48 00 34 00 4b 00 4a 00 32 00 53 00 4e 00 4f 00 4a 00 63 00 56 00 48 00 69 00 31 00 71 00 6f 00 6d 00 49 00 6b 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}