
rule TrojanDownloader_BAT_AgentTesla_EFY_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.EFY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 08 00 00 0a 00 "
		
	strings :
		$a_03_0 = {44 00 6f 00 77 00 90 01 08 6e 00 6c 00 90 01 08 6f 00 61 00 64 00 44 00 90 01 08 61 00 74 00 61 00 90 00 } //0a 00 
		$a_03_1 = {47 00 65 00 74 00 42 00 79 00 90 01 08 74 00 65 00 41 00 72 00 72 00 90 01 08 61 00 79 00 41 00 73 00 79 00 90 01 08 6e 00 63 00 90 00 } //01 00 
		$a_01_2 = {00 47 65 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_3 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_4 = {00 49 6e 76 6f 6b 65 00 } //01 00  䤀癮歯e
		$a_01_5 = {00 47 65 74 54 79 70 65 } //01 00  䜀瑥祔数
		$a_01_6 = {00 57 65 62 43 6c 69 65 6e 74 00 } //01 00 
		$a_01_7 = {00 48 74 74 70 43 6c 69 65 6e 74 00 } //00 00  䠀瑴䍰楬湥t
	condition:
		any of ($a_*)
 
}