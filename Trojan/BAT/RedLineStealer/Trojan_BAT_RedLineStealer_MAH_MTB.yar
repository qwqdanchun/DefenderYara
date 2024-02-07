
rule Trojan_BAT_RedLineStealer_MAH_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 8e 69 17 59 32 db 11 04 6f 90 01 03 0a 2d 58 12 00 7b 90 01 01 00 00 04 6f 90 01 03 0a 2d 4a 28 90 01 03 0a 12 00 7b 90 01 01 00 00 04 6f 90 01 03 0a 28 90 01 03 0a 0c 16 13 08 2b 25 09 11 08 9a 08 28 90 01 03 0a 2c 10 1b 39 90 01 03 ff 09 11 08 17 58 9a 13 04 2b 12 11 08 1d 2c a5 18 58 13 08 11 08 09 8e 69 17 59 32 d2 11 04 6f 90 01 03 0a 16 3e 90 00 } //01 00 
		$a_03_1 = {13 04 11 04 11 07 09 08 6f 90 01 03 0a 17 73 90 01 01 00 00 0a 13 05 11 05 11 06 16 11 06 8e 69 6f 90 01 03 0a 11 05 6f 90 01 03 0a 1c 2c ce 28 90 01 03 0a 13 08 11 08 11 04 6f 90 01 03 0a 6f 90 01 03 0a 0a de 0f 1b 2c 04 11 07 2c 07 11 07 6f 90 01 03 0a dc 90 00 } //01 00 
		$a_81_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_3 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_81_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_81_5 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_6 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_81_7 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_8 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_81_9 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_81_10 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_81_11 = {67 65 74 5f 4c 65 6e 67 74 68 } //00 00  get_Length
	condition:
		any of ($a_*)
 
}