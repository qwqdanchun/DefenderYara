
rule Trojan_BAT_AgentTesla_ZA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 62 33 63 36 38 62 64 2d 31 62 62 65 2d 34 37 63 38 2d 61 32 34 61 2d 32 30 62 34 35 62 62 33 37 34 61 65 } //01 00  cb3c68bd-1bbe-47c8-a24a-20b45bb374ae
		$a_81_1 = {53 75 62 74 72 61 63 74 4f 62 6a 65 63 74 } //01 00  SubtractObject
		$a_81_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_4 = {4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //01 00  NewLateBinding
		$a_81_5 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_81_6 = {54 6f 49 6e 74 33 32 } //01 00  ToInt32
		$a_81_7 = {4c 61 74 65 53 65 74 } //01 00  LateSet
		$a_81_8 = {43 6f 6e 76 65 72 73 69 6f 6e 73 } //01 00  Conversions
		$a_81_9 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_10 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ZA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 00 11 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  file:///ᄀLocation
		$a_00_1 = {11 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 20 00 00 0b 41 00 6c 00 6c 00 6f 00 63 00 00 0d 57 00 72 00 69 00 74 00 65 00 20 00 00 11 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 00 0d 4d 00 65 00 6d 00 6f 00 72 00 79 } //01 00 
		$a_01_2 = {47 65 74 48 61 73 68 43 6f 64 65 } //01 00  GetHashCode
		$a_01_3 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RSACryptoServiceProvider
		$a_01_4 = {73 65 74 5f 55 73 65 4d 61 63 68 69 6e 65 4b 65 79 53 74 6f 72 65 } //01 00  set_UseMachineKeyStore
		$a_01_5 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_7 = {53 70 65 63 69 61 6c 44 69 72 65 63 74 6f 72 69 65 73 50 72 6f 78 79 } //01 00  SpecialDirectoriesProxy
		$a_01_8 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_9 = {46 69 6c 65 53 79 73 74 65 6d 50 72 6f 78 79 } //01 00  FileSystemProxy
		$a_01_10 = {54 00 65 00 78 00 74 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 28 00 2a 00 2e 00 74 00 78 00 74 00 29 00 7c 00 2a 00 2e 00 74 00 78 00 74 00 7c 00 41 00 6c 00 6c 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 28 00 2a 00 2e 00 2a 00 29 00 7c 00 2a 00 2e 00 2a 00 } //01 00  Text Files (*.txt)|*.txt|All Files (*.*)|*.*
		$a_01_11 = {53 00 6f 00 61 00 70 00 4e 00 61 00 6d 00 65 00 2e 00 64 00 6c 00 6c 00 } //00 00  SoapName.dll
	condition:
		any of ($a_*)
 
}