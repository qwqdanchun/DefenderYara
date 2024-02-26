
rule Trojan_BAT_Dnoper_ADN_MTB{
	meta:
		description = "Trojan:BAT/Dnoper.ADN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {a2 25 17 08 a2 25 18 72 e7 0e 00 70 a2 25 19 02 7b 12 00 00 04 a2 25 1a 72 17 0f 00 70 a2 28 28 00 00 0a 13 04 09 11 04 28 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Dnoper_ADN_MTB_2{
	meta:
		description = "Trojan:BAT/Dnoper.ADN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {0b 07 72 21 9d 07 70 28 1d 00 00 0a 0b 07 72 ec 9d 07 70 28 1d 00 00 0a 0b 07 28 1e 00 00 0a 0a 1f 1a 28 1f 00 00 0a 72 9f 9e 07 70 28 1d 00 00 0a 0c 08 06 } //01 00 
		$a_01_1 = {53 00 48 00 20 00 46 00 49 00 4c 00 45 00 2e 00 65 00 78 00 65 00 } //01 00  SH FILE.exe
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_3 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //00 00  GetFolderPath
	condition:
		any of ($a_*)
 
}