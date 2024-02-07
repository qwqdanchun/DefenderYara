
rule Trojan_BAT_RedLineStealer_MAW_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 11 0d 16 06 6f 90 01 03 0a 25 26 11 0e 6a 59 69 6f 90 01 03 0a 25 26 26 11 0a 11 0d 16 06 6f 90 01 03 0a 25 26 11 0e 6a 59 69 6f 90 01 03 0a 25 26 13 10 7e 90 01 03 04 11 10 16 11 10 28 90 01 03 06 25 26 69 6f 90 01 03 0a 7e 90 01 03 04 0b 07 16 6a 6f 90 01 03 0a 7e 90 01 03 04 0c 11 04 1e 5f 39 90 00 } //01 00 
		$a_01_1 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_5 = {52 65 64 75 63 65 43 6f 6e 66 69 67 } //01 00  ReduceConfig
		$a_01_6 = {52 65 64 75 63 65 44 61 74 61 62 61 73 65 } //01 00  ReduceDatabase
		$a_01_7 = {52 75 6e 50 45 } //01 00  RunPE
		$a_01_8 = {4d 65 6d 6f 72 79 45 76 65 6e 74 } //01 00  MemoryEvent
		$a_01_9 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_10 = {73 65 74 5f 49 56 } //01 00  set_IV
		$a_01_11 = {73 65 74 5f 4b 65 79 } //00 00  set_Key
	condition:
		any of ($a_*)
 
}