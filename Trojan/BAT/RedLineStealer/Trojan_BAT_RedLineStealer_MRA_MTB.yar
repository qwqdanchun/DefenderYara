
rule Trojan_BAT_RedLineStealer_MRA_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MRA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 74 00 70 00 3a 00 2f 00 2f 00 34 00 39 00 2e 00 31 00 32 00 2e 00 32 00 31 00 37 00 2e 00 31 00 30 00 36 00 2f 00 2f 00 66 00 6c 00 65 00 78 00 2e 00 7a 00 69 00 70 00 } //01 00  ftp://49.12.217.106//flex.zip
		$a_01_1 = {5c 00 54 00 65 00 6d 00 70 00 5c 00 6b 00 6a 00 61 00 73 00 66 00 32 00 33 00 31 00 } //01 00  \Temp\kjasf231
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_3 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_5 = {73 65 74 5f 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  set_Credentials
		$a_03_6 = {01 0c 16 0d 73 90 01 03 0a 90 0a 15 00 0b 20 00 08 00 00 8d 20 00 00 90 02 09 13 04 2b 0a 11 04 08 16 09 6f 90 01 03 0a 07 08 16 08 8e 69 6f 90 01 03 0a 25 0d 16 30 e6 11 04 6f 90 01 03 0a 0a de 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}