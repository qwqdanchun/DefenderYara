
rule Trojan_BAT_SpySnake_MAN_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 08 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 16 09 16 1f 10 28 90 01 03 0a 11 04 16 09 1f 0f 1f 10 28 90 01 03 0a 06 09 6f 90 01 03 0a 06 18 6f 90 01 03 0a 06 6f 90 01 03 0a 13 05 02 28 90 01 03 0a 13 06 28 90 01 03 0a 11 05 11 06 16 11 06 8e 69 6f 90 01 03 0a 6f 90 01 03 0a 0c de 03 90 00 } //01 00 
		$a_01_1 = {49 41 73 79 6e 63 4c 6f 63 61 6c } //01 00  IAsyncLocal
		$a_01_2 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_7 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}