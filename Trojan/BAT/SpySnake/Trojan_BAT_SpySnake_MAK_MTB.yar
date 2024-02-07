
rule Trojan_BAT_SpySnake_MAK_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 07 2b 03 00 2b 07 6f 90 01 03 0a 2b f6 07 6f 90 01 03 0a 0c de 11 07 2b 08 07 6f 90 01 03 0a 2b 04 2c 03 2b f4 00 dc 08 2a 90 00 } //01 00 
		$a_01_1 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_4 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_03_5 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 39 00 38 00 31 00 31 00 30 00 36 00 30 00 38 00 33 00 34 00 35 00 34 00 31 00 32 00 34 00 30 00 37 00 35 00 90 02 80 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_01_6 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}