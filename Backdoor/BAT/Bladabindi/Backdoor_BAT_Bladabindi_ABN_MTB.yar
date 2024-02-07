
rule Backdoor_BAT_Bladabindi_ABN_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.ABN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 02 00 "
		
	strings :
		$a_03_0 = {03 11 0c 16 11 0a 6f 40 90 01 02 0a 25 26 26 11 09 11 0c 16 11 0a 11 0b 16 6f 4a 90 01 02 0a 13 0e 7e 0b 90 01 02 04 11 0b 16 11 0e 6f 4b 90 01 02 0a 11 0d 11 0a 58 13 0d 90 00 } //02 00 
		$a_03_1 = {14 13 05 de 34 06 07 1f 10 6f 36 90 01 02 0a 0c 08 20 03 90 01 02 00 28 39 90 01 02 0a 25 26 0d 09 28 3a 90 01 02 0a 25 26 13 04 11 04 28 3b 90 01 02 0a 11 04 13 05 de 05 90 00 } //01 00 
		$a_01_2 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_01_3 = {43 72 79 70 74 6f 53 74 72 65 61 6d 4d 6f 64 65 } //01 00  CryptoStreamMode
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_7 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_8 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_9 = {43 72 65 61 74 65 44 65 6c 65 67 61 74 65 } //00 00  CreateDelegate
	condition:
		any of ($a_*)
 
}