
rule Trojan_BAT_AsyncRAT_NAD_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 2c 19 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 90 00 } //01 00 
		$a_03_1 = {28 1e 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 90 00 } //01 00 
		$a_01_2 = {6d 5f 4d 79 57 65 62 53 65 72 76 69 63 65 73 4f 62 6a 65 63 74 50 72 6f 76 69 64 65 72 } //01 00 
		$a_01_3 = {6d 5f 55 73 65 72 4f 62 6a 65 63 74 50 72 6f 76 69 64 65 72 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_5 = {41 63 74 69 76 61 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}