
rule Trojan_BAT_Injectgen_MA_MTB{
	meta:
		description = "Trojan:BAT/Injectgen.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 05 11 05 20 00 01 00 00 6f 90 01 03 0a 11 05 17 6f 90 01 03 0a 11 05 0b 03 2d 1f 07 06 1f 10 6f 90 01 03 0a 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 6f 90 01 03 0a 2b 1d 07 06 1f 10 6f 90 01 03 0a 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 6f 90 01 03 0a 0c 73 90 01 03 0a 0d 09 08 17 73 90 01 03 0a 13 04 11 04 02 16 02 8e 69 6f 90 01 03 0a 11 04 6f 90 01 03 0a de 90 00 } //01 00 
		$a_01_1 = {73 65 74 5f 4b 65 79 53 69 7a 65 } //01 00  set_KeySize
		$a_01_2 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_4 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_5 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_01_6 = {5a 69 70 41 72 63 68 69 76 65 } //01 00  ZipArchive
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_8 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_9 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_01_10 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}