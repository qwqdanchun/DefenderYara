
rule Trojan_BAT_AgentTesla_CK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 14 00 00 01 00 "
		
	strings :
		$a_81_0 = {31 65 66 64 64 32 65 31 2d 34 61 38 31 2d 34 31 66 30 2d 61 30 61 31 2d 66 37 37 61 64 35 31 63 65 32 36 66 } //01 00  1efdd2e1-4a81-41f0-a0a1-f77ad51ce26f
		$a_81_1 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //01 00  ClassLibrary
		$a_81_2 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_81_3 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //01 00  SymmetricAlgorithm
		$a_81_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_7 = {43 72 79 70 74 6f 67 72 61 70 68 79 } //01 00  Cryptography
		$a_81_8 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 35 63 30 2d 31 } //01 00  $$method0x60005c0-1
		$a_81_9 = {42 69 6e 64 69 6e 67 46 6c 61 67 73 } //01 00  BindingFlags
		$a_81_10 = {4e 4a 4b 30 48 50 36 62 62 45 } //01 00  NJK0HP6bbE
		$a_81_11 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_81_12 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_13 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_14 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_81_15 = {41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  AesCryptoServiceProvider
		$a_81_16 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_17 = {4c 6f 61 64 4c 69 62 72 61 72 79 } //01 00  LoadLibrary
		$a_81_18 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_19 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 39 63 2d 31 } //00 00  $$method0x600039c-1
	condition:
		any of ($a_*)
 
}