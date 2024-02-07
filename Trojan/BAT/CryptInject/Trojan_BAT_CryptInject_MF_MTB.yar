
rule Trojan_BAT_CryptInject_MF_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 16 73 90 01 03 0a 0b 1a 8d 90 01 03 01 0c 06 06 6f 90 01 03 0a 1b 6a da 6f 90 01 03 0a 06 08 16 1a 6f 90 01 03 0a 26 08 16 28 90 01 03 0a 0d 06 16 6a 6f 90 01 03 0a 09 17 da 17 d6 8d 90 01 03 01 13 04 07 11 04 16 09 6f 90 01 03 0a 26 07 6f 90 01 03 0a 06 6f 90 01 03 0a 11 04 90 00 } //01 00 
		$a_03_1 = {0c 08 02 16 02 8e 69 6f 90 01 03 0a 08 6f 90 01 03 0a 06 6f 90 01 03 0a 0d 09 90 00 } //01 00 
		$a_01_2 = {41 4e 54 49 56 4d } //01 00  ANTIVM
		$a_01_3 = {44 65 63 6f 64 65 } //01 00  Decode
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {44 65 63 6f 6d 70 72 65 73 73 } //01 00  Decompress
		$a_01_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_7 = {52 65 6c 65 61 73 65 4d 75 74 65 78 } //01 00  ReleaseMutex
		$a_01_8 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_9 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_10 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}