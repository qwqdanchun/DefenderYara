
rule Trojan_BAT_RedLineStealer_MAL_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_03_0 = {04 8e 69 1e 5a 6f 90 01 03 0a 00 11 05 02 7b 90 01 01 00 00 04 6f 90 01 03 0a 00 11 05 02 7b 90 01 01 00 00 04 8e 69 1e 5a 6f 90 01 03 0a 00 11 05 02 7b 90 01 01 00 00 04 6f 90 01 03 0a 00 11 05 6f 90 01 03 0a 13 06 00 03 73 90 01 01 00 00 0a 13 07 00 11 07 11 06 16 73 90 01 01 00 00 0a 13 08 00 03 8e 69 17 59 17 58 17 59 17 58 8d 90 01 01 00 00 01 13 09 11 08 11 09 16 03 8e 69 6f 90 01 03 0a 13 0a 11 09 11 0a 28 90 01 03 2b 28 90 01 03 2b 0c 00 de 90 00 } //01 00 
		$a_81_1 = {63 69 70 68 65 72 } //01 00  cipher
		$a_81_2 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_81_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_4 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_81_5 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_81_6 = {57 72 69 74 65 42 79 74 65 } //01 00  WriteByte
		$a_81_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_9 = {6f 70 68 74 68 61 6c 6d 6f 6c 6f 67 69 63 } //01 00  ophthalmologic
		$a_81_10 = {67 65 74 5f 53 63 72 69 70 74 } //01 00  get_Script
		$a_81_11 = {67 65 74 5f 48 6f 73 74 73 } //01 00  get_Hosts
		$a_81_12 = {73 65 74 5f 4b 65 79 53 69 7a 65 } //01 00  set_KeySize
		$a_81_13 = {73 65 74 5f 49 56 } //00 00  set_IV
	condition:
		any of ($a_*)
 
}