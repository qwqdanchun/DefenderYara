
rule Trojan_BAT_RedLineStealer_MAK_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 07 02 07 0e 04 0e 04 8e 69 12 04 11 06 11 06 8e 69 14 18 28 90 01 03 06 12 07 18 28 90 01 03 06 28 90 01 03 06 2c 03 16 2b 03 17 2b 00 2d 06 73 90 01 01 00 00 0a 7a 11 07 8d 90 01 01 00 00 01 0d 02 07 0e 04 0e 04 8e 69 12 04 11 06 11 06 8e 69 09 09 8e 69 12 07 18 28 90 01 03 06 28 90 01 03 06 25 1f 14 28 90 01 03 06 33 06 73 90 01 01 00 00 0a 7a 2c 03 16 2b 03 17 2b 00 2d 06 73 90 01 01 00 00 0a 7a de 90 00 } //01 00 
		$a_81_1 = {42 43 52 59 50 54 5f 41 55 54 48 45 4e 54 49 43 41 54 45 44 5f 43 49 50 48 45 52 5f 4d 4f 44 45 5f 49 4e 46 4f } //01 00  BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
		$a_81_2 = {45 6e 63 72 79 70 74 65 64 44 61 74 61 } //01 00  EncryptedData
		$a_81_3 = {44 65 63 72 79 70 74 42 6c 6f 62 } //01 00  DecryptBlob
		$a_81_4 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //01 00  get_UserName
		$a_81_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_6 = {67 65 74 5f 4b 65 79 53 69 7a 65 } //01 00  get_KeySize
		$a_81_7 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_8 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_81_9 = {53 6c 65 65 70 } //01 00  Sleep
		$a_81_10 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_11 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_81_12 = {67 65 74 5f 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  get_Credentials
		$a_81_13 = {43 72 79 70 74 44 65 63 72 79 70 74 } //01 00  CryptDecrypt
		$a_81_14 = {67 65 74 5f 65 6e 63 72 79 70 74 65 64 5f 6b 65 79 } //01 00  get_encrypted_key
		$a_81_15 = {43 68 72 6f 6d 65 47 65 74 4e 61 6d 65 } //00 00  ChromeGetName
	condition:
		any of ($a_*)
 
}