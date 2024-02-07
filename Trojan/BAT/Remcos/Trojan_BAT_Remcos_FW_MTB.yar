
rule Trojan_BAT_Remcos_FW_MTB{
	meta:
		description = "Trojan:BAT/Remcos.FW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {42 64 62 65 62 61 61 64 62 65 64 63 62 63 61 } //01 00  Bdbebaadbedcbca
		$a_81_1 = {44 6f 43 72 65 61 74 65 45 6e 74 72 79 46 72 6f 6d 46 69 6c 65 } //01 00  DoCreateEntryFromFile
		$a_81_2 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4c 65 76 65 6c } //01 00  CompressionLevel
		$a_81_3 = {5a 69 70 41 72 63 68 69 76 65 4d 6f 64 65 } //01 00  ZipArchiveMode
		$a_81_4 = {47 65 74 44 6f 6d 61 69 6e } //01 00  GetDomain
		$a_81_5 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_81_6 = {5a 69 70 46 69 6c 65 45 78 74 65 6e 73 69 6f 6e 73 } //01 00  ZipFileExtensions
		$a_81_7 = {49 6e 76 6f 6b 65 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}