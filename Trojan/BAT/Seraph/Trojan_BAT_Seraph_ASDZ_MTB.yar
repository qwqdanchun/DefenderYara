
rule Trojan_BAT_Seraph_ASDZ_MTB{
	meta:
		description = "Trojan:BAT/Seraph.ASDZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 02 2a 11 02 11 03 11 01 11 03 11 01 8e 69 5d 91 11 04 11 03 91 61 d2 9c 38 90 01 01 00 00 00 11 03 11 04 8e 69 90 01 01 da ff ff ff 38 90 01 01 ff ff ff 11 04 8e 69 90 00 } //01 00 
		$a_01_1 = {58 5a 67 73 65 63 58 65 69 62 72 6d 6f 58 67 6d 69 56 23 65 78 63 62 6d 6f 49 57 7a 69 68 73 65 69 07 62 6d 7e 4f 4f 79 68 6b 78 4d 40 62 62 6b 7c 5c 71 72 7f 67 5a 5e 69 63 68 77 91 5b 74 70 78 62 5e 6d 76 6f 69 72 63 56 4c } //01 00 
		$a_01_2 = {5a 00 67 00 79 00 69 00 6b 00 72 00 65 00 69 00 63 00 62 00 6d 00 6f 00 } //01 00  Zgyikreicbmo
		$a_01_3 = {47 00 65 00 63 00 71 00 76 00 6c 00 7a 00 72 00 67 00 79 00 72 00 71 00 66 00 73 00 73 00 69 00 7a 00 } //00 00  Gecqvlzrgyrqfssiz
	condition:
		any of ($a_*)
 
}