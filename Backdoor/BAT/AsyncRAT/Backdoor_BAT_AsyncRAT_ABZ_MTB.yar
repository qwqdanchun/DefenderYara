
rule Backdoor_BAT_AsyncRAT_ABZ_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.ABZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {d2 9c 06 18 02 1e 63 d2 9c 06 17 02 1f 10 63 d2 9c 06 16 02 1f 18 63 d2 9c 06 2a 90 0a 25 00 1a 8d 1c 90 01 02 01 0a 06 19 02 90 00 } //01 00 
		$a_01_1 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_01_2 = {57 72 69 74 65 42 79 74 65 } //01 00  WriteByte
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_4 = {52 65 67 69 73 74 72 79 4b 65 79 50 65 72 6d 69 73 73 69 6f 6e 43 68 65 63 6b } //01 00  RegistryKeyPermissionCheck
		$a_01_5 = {4e 65 74 77 6f 72 6b 53 74 72 65 61 6d } //01 00  NetworkStream
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_7 = {47 65 74 48 6f 73 74 41 64 64 72 65 73 73 65 73 } //00 00  GetHostAddresses
	condition:
		any of ($a_*)
 
}