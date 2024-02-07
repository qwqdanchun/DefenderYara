
rule Trojan_BAT_Crypt_MA_MTB{
	meta:
		description = "Trojan:BAT/Crypt.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 1f f8 6a 18 6f 90 01 03 0a 26 06 28 90 01 03 06 13 05 06 11 05 65 1e 6a 59 17 6f 90 01 03 0a 26 1b 8d 90 01 01 00 00 01 13 06 06 11 06 16 1b 6f 90 01 03 0a 26 73 90 01 01 00 00 06 25 11 06 6f 90 01 03 06 06 28 90 01 03 06 13 07 06 08 11 05 11 07 14 6f 90 01 03 06 06 6f 90 01 03 0a 08 16 6a 16 6f 90 01 03 0a 26 08 28 90 01 03 06 80 90 01 01 00 00 04 7f 90 01 03 04 7b 90 01 03 04 2c 74 90 00 } //01 00 
		$a_01_1 = {4b 69 6c 6c } //01 00  Kill
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_3 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_4 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_6 = {47 65 74 50 72 6f 63 65 73 73 65 73 } //01 00  GetProcesses
		$a_01_7 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_8 = {32 61 38 36 63 37 63 32 2d 33 31 35 33 2d 34 30 61 63 2d 61 32 36 34 2d 34 30 35 63 63 61 33 36 32 33 62 62 } //00 00  2a86c7c2-3153-40ac-a264-405cca3623bb
	condition:
		any of ($a_*)
 
}