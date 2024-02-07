
rule Trojan_BAT_FareitLoader_MTB{
	meta:
		description = "Trojan:BAT/FareitLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffcf 02 ffffffcf 02 21 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 46 69 6c 65 4e 61 6d 65 57 69 74 68 6f 75 74 45 78 74 65 6e 73 69 6f 6e } //01 00  GetFileNameWithoutExtension
		$a_01_1 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //01 00  System.IO.Compression
		$a_01_2 = {47 65 74 45 6e 74 72 79 41 73 73 65 6d 62 6c 79 } //01 00  GetEntryAssembly
		$a_01_3 = {70 72 6f 6a 65 63 74 5f 6e 61 6d 65 } //01 00  project_name
		$a_01_4 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_5 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_01_6 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00  System.Threading
		$a_01_7 = {73 65 74 5f 55 73 65 4d 61 63 68 69 6e 65 4b 65 79 53 74 6f 72 65 } //01 00  set_UseMachineKeyStore
		$a_01_8 = {53 79 73 74 65 6d 2e 52 75 6e 74 69 6d 65 2e 52 65 6d 6f 74 69 6e 67 } //01 00  System.Runtime.Remoting
		$a_01_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_10 = {46 69 6c 65 53 74 72 65 61 6d } //01 00  FileStream
		$a_01_11 = {46 69 6c 65 4d 6f 64 65 } //01 00  FileMode
		$a_01_12 = {46 69 6c 65 41 63 63 65 73 73 } //01 00  FileAccess
		$a_01_13 = {46 69 6c 65 53 68 61 72 65 } //01 00  FileShare
		$a_01_14 = {73 65 74 5f 4b 65 79 } //01 00  set_Key
		$a_01_15 = {73 65 74 5f 49 56 } //01 00  set_IV
		$a_01_16 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_17 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_01_18 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //32 00  ToBase64String
		$a_01_19 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 41 00 65 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //32 00  System.Security.Cryptography.AesCryptoServiceProvider
		$a_01_20 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //32 00  {11111-22222-10009-11112}
		$a_01_21 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //32 00  {11111-22222-50001-00000}
		$a_01_22 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //32 00  GetDelegateForFunctionPointer
		$a_01_23 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //32 00  file:///
		$a_01_24 = {4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //32 00  Location
		$a_01_25 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //32 00  {11111-22222-20001-00001}
		$a_01_26 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //32 00  {11111-22222-20001-00002}
		$a_01_27 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //32 00  {11111-22222-30001-00001}
		$a_01_28 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //32 00  {11111-22222-30001-00002}
		$a_01_29 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //32 00  {11111-22222-40001-00001}
		$a_01_30 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //32 00  {11111-22222-40001-00002}
		$a_01_31 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //32 00  {11111-22222-50001-00001}
		$a_01_32 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //00 00  {11111-22222-50001-00002}
	condition:
		any of ($a_*)
 
}