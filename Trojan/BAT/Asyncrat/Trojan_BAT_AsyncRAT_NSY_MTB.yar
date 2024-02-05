
rule Trojan_BAT_AsyncRAT_NSY_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NSY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {8d 17 00 00 01 25 16 72 90 01 02 00 70 a2 25 17 7e 90 01 02 00 0a a2 25 18 09 a2 25 19 17 8c 90 01 02 00 01 a2 13 04 14 13 05 07 28 90 01 02 00 0a 72 90 01 02 00 70 6f 90 01 02 00 0a 72 90 01 02 00 70 20 90 01 02 00 00 14 11 05 11 04 74 90 01 02 00 1b 6f 90 01 02 00 0a 90 00 } //01 00 
		$a_01_1 = {41 64 76 61 6e 63 65 64 5f 43 61 6c 63 75 6c 61 74 6f 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AsyncRAT_NSY_MTB_2{
	meta:
		description = "Trojan:BAT/AsyncRAT.NSY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {1f 6b 28 57 00 00 06 28 90 01 02 00 0a 28 90 01 02 00 0a 26 1f 78 28 90 01 02 00 06 07 20 90 01 02 00 00 28 90 01 02 00 06 28 90 01 02 00 0a 28 90 01 02 00 06 26 20 90 01 02 00 00 28 90 01 02 00 06 1f 50 28 90 01 02 00 06 28 90 01 02 00 06 07 20 90 01 02 00 00 28 90 01 02 00 06 28 90 01 02 00 0a 28 90 01 02 00 06 26 1b 8d 90 01 02 00 01 0d 09 16 20 90 01 02 00 00 28 90 01 02 00 06 1f 50 28 90 01 02 00 06 28 90 01 02 00 06 a2 09 17 28 90 01 02 00 0a 6f 90 01 02 00 0a a2 09 18 20 90 01 02 00 00 28 90 01 02 00 06 a2 90 00 } //01 00 
		$a_01_1 = {6b 62 61 6b 63 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}