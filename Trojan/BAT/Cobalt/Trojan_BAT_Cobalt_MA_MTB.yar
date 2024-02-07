
rule Trojan_BAT_Cobalt_MA_MTB{
	meta:
		description = "Trojan:BAT/Cobalt.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {0c 08 02 16 90 0a 15 00 06 07 6f 90 01 03 0a 17 73 90 01 03 0a 90 02 05 02 8e 69 6f 90 01 03 0a 08 6f 90 01 03 0a 06 6f 90 01 03 0a 0d 09 2a 90 00 } //01 00 
		$a_03_1 = {13 08 11 08 07 16 07 8e 69 6f 90 01 03 0a 11 08 6f 90 01 03 0a 11 07 6f 90 01 03 0a 80 90 01 01 00 00 04 11 07 6f 90 01 03 0a 90 00 } //01 00 
		$a_00_2 = {e3 f8 aa 20 96 42 18 e0 c5 2e 0c 1e 0b 5e c4 ce } //01 00 
		$a_01_3 = {50 72 6f 63 65 73 73 43 6d 64 4b 65 79 } //01 00  ProcessCmdKey
		$a_01_4 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_01_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_7 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_10 = {73 65 74 5f 55 73 65 4d 61 63 68 69 6e 65 4b 65 79 53 74 6f 72 65 } //01 00  set_UseMachineKeyStore
		$a_01_11 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_12 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //00 00  CreateEncryptor
	condition:
		any of ($a_*)
 
}