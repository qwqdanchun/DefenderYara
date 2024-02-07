
rule Trojan_BAT_LokiBot_FD_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.FD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {06 07 08 02 7b 90 01 03 04 07 1e 5d 6f 90 01 03 0a 6f 90 01 03 06 72 90 01 03 70 12 01 28 90 01 03 0a 12 02 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 00 08 17 58 0c 08 03 fe 04 0d 09 2d bf 90 00 } //01 00 
		$a_01_1 = {57 1d b6 09 09 0d 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 79 00 00 00 16 } //01 00 
		$a_01_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_3 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //00 00  MemoryStream
	condition:
		any of ($a_*)
 
}