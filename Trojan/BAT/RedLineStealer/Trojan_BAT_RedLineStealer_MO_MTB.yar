
rule Trojan_BAT_RedLineStealer_MO_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 20 00 01 00 00 6f 90 01 03 0a 07 20 80 00 00 00 6f 90 01 03 0a 1e 8d 37 00 00 01 25 d0 7e 00 00 04 28 90 01 03 0a 0c 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 08 20 e8 03 00 00 73 90 01 03 0a 0d 07 09 07 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 07 09 07 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 07 17 6f 90 01 03 0a 72 90 01 03 70 90 00 } //1
		$a_03_1 = {13 04 06 07 90 0a 12 00 28 0b 00 00 06 28 2e 00 00 0a 90 02 06 6f 90 01 03 0a 17 73 30 00 00 0a 13 08 11 08 11 04 16 11 04 8e 69 6f 90 01 03 0a 11 08 6f 90 01 03 0a de 0c 11 08 2c 07 11 08 6f 90 01 03 0a dc 06 6f 90 01 03 0a 28 90 01 03 0a 6f 90 01 03 0a 13 05 14 13 06 17 8d 01 00 00 01 25 16 17 8d 2d 00 00 01 25 16 72 90 01 03 70 a2 a2 13 07 11 05 11 06 11 07 6f 90 01 03 0a 26 90 00 } //1
		$a_81_2 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_5 = {52 65 76 65 72 73 65 53 74 72 69 6e 67 } //1 ReverseString
		$a_81_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_7 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_81_8 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_81_9 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}