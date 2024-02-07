
rule Trojan_BAT_NanoBot_MFP_MTB{
	meta:
		description = "Trojan:BAT/NanoBot.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 13 00 00 01 00 "
		
	strings :
		$a_00_0 = {24 65 35 64 36 35 37 61 32 2d 37 32 39 34 2d 34 65 65 32 2d 61 65 64 35 2d 63 38 33 30 34 30 34 62 36 38 36 33 } //01 00  $e5d657a2-7294-4ee2-aed5-c830404b6863
		$a_00_1 = {57 bd b6 29 09 1f 00 00 00 00 00 00 00 00 00 00 } //01 00 
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_81_3 = {58 4f 52 5f 44 65 63 72 79 70 74 } //01 00  XOR_Decrypt
		$a_81_4 = {53 75 73 70 65 6e 64 4c 61 79 6f 75 74 } //01 00  SuspendLayout
		$a_81_5 = {4d 69 63 72 6f 73 6f 66 74 2e 57 69 6e 33 32 } //01 00  Microsoft.Win32
		$a_81_6 = {47 65 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 } //01 00  GetTempFileName
		$a_81_7 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //01 00  get_ExecutablePath
		$a_81_8 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RSACryptoServiceProvider
		$a_81_9 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_81_10 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //01 00  SymmetricAlgorithm
		$a_81_11 = {41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  AesCryptoServiceProvider
		$a_81_12 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_81_13 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_81_14 = {48 61 73 68 41 6c 67 6f 72 69 74 68 6d } //01 00  HashAlgorithm
		$a_81_15 = {43 72 79 70 74 6f 53 74 72 65 61 6d } //01 00  CryptoStream
		$a_81_16 = {42 69 6e 61 72 79 52 65 61 64 65 72 } //01 00  BinaryReader
		$a_81_17 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_81_18 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}