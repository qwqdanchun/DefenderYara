
rule Trojan_BAT_Njrat_MC_MTB{
	meta:
		description = "Trojan:BAT/Njrat.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {0b 02 8e 69 13 08 12 08 28 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 0c 12 02 28 90 01 03 06 0d 07 09 16 09 8e 69 6f 90 01 03 0a 00 07 02 16 02 8e 69 6f 90 01 03 0a 00 7e 90 01 03 04 6f 90 01 03 0a 07 6f 90 01 03 0a 16 07 6f 90 01 03 0a b7 16 6f 90 01 03 0a 26 07 6f 90 01 03 0a 00 00 de 09 90 00 } //01 00 
		$a_03_1 = {06 b5 0b 1f 64 28 90 01 03 0a 0c 1f 64 0d 14 13 04 07 12 02 09 12 04 1f 64 28 90 01 03 06 16 fe 01 13 06 11 06 2d 03 00 2b 1a 06 17 d6 0a 06 1a fe 02 16 fe 01 13 06 11 06 2d 03 00 2b 0b 00 17 13 06 2b bb 90 00 } //01 00 
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00  cmd.exe /C Y /N /D Y /T 1 & Del
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_4 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_5 = {44 65 63 6f 6d 70 72 65 73 73 47 7a 69 70 } //01 00  DecompressGzip
		$a_01_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_7 = {4f 53 46 75 6c 6c 4e 61 6d 65 } //01 00  OSFullName
		$a_01_8 = {53 65 61 72 63 68 46 6f 72 43 61 6d } //01 00  SearchForCam
		$a_01_9 = {53 74 72 69 6e 67 54 6f 42 61 73 65 36 34 } //00 00  StringToBase64
	condition:
		any of ($a_*)
 
}