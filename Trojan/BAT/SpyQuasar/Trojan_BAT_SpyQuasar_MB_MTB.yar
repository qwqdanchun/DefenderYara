
rule Trojan_BAT_SpyQuasar_MB_MTB{
	meta:
		description = "Trojan:BAT/SpyQuasar.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {07 17 58 0b 07 20 00 01 00 00 5d 0b 09 11 07 07 94 58 0d 09 20 00 01 00 00 5d 0d 11 07 07 94 13 05 11 07 07 11 07 09 94 9e 11 07 09 11 05 9e 11 07 11 07 07 94 11 07 09 94 58 20 00 01 00 00 5d 94 13 04 11 08 08 02 08 91 11 04 61 d2 9c 08 17 58 0c 08 02 8e 69 32 } //01 00 
		$a_01_1 = {42 69 74 63 6f 69 6e } //01 00  Bitcoin
		$a_01_2 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_3 = {46 6c 61 67 31 } //01 00  Flag1
		$a_01_4 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}