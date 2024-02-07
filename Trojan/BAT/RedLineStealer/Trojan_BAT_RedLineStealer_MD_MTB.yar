
rule Trojan_BAT_RedLineStealer_MD_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 13 0f 07 17 d6 20 00 01 00 00 5d 0b 08 11 05 07 94 d6 20 00 01 00 00 5d 0c 11 05 07 94 13 0f 11 05 07 11 05 08 94 9e 11 05 08 11 0f 9e 11 05 11 05 07 94 11 05 08 94 d6 20 00 01 00 00 5d 94 13 10 02 11 08 17 da 17 6f 90 01 03 0a 6f 90 01 03 0a 16 93 13 11 11 11 28 90 01 03 0a 13 0f 11 0f 11 10 61 13 12 09 11 12 28 90 01 03 0a 6f 90 01 03 0a 26 12 08 28 90 01 03 0a 11 08 17 da 28 90 01 03 0a 26 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_3 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_4 = {54 6f 43 68 61 72 41 72 72 61 79 } //00 00  ToCharArray
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLineStealer_MD_MTB_2{
	meta:
		description = "Trojan:BAT/RedLineStealer.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 90 0a 10 00 73 b6 00 00 0a 90 01 04 7e 9f 00 00 04 11 07 09 08 28 90 01 03 06 17 73 b7 00 00 0a 13 05 7e a1 00 00 04 11 05 11 06 16 11 06 8e 69 28 90 01 03 06 7e 81 00 00 04 11 05 28 90 01 03 06 7e 6b 00 00 04 28 90 01 03 06 13 08 7e a5 00 00 04 11 08 7e a3 00 00 04 11 04 28 90 01 03 06 28 90 01 03 06 0a de 11 90 00 } //01 00 
		$a_81_1 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_81_2 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_5 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_81_6 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //01 00  ContainsKey
		$a_81_7 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_81_8 = {4c 6f 61 64 46 69 6c 65 } //00 00  LoadFile
	condition:
		any of ($a_*)
 
}