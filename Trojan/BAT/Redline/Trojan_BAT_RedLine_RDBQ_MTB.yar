
rule Trojan_BAT_RedLine_RDBQ_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDBQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 31 37 62 63 63 64 37 2d 31 39 33 37 2d 34 33 63 36 2d 39 32 63 34 2d 65 37 36 38 30 37 64 38 64 39 65 30 } //01 00 
		$a_01_1 = {4e 66 6a 79 65 6a 63 75 61 6d 76 } //01 00 
		$a_01_2 = {48 69 71 6d 76 67 72 6c 73 6d 6e 6b 7a 7a 77 6a 7a 74 78 } //01 00 
		$a_01_3 = {55 00 78 00 78 00 70 00 6f 00 69 00 68 00 73 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}