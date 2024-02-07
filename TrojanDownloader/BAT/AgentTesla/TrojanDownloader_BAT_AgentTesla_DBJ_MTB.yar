
rule TrojanDownloader_BAT_AgentTesla_DBJ_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.DBJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 21 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 21 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 21 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //01 00  Sy!stem.Refl!ection.As!sembly
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 74 00 6f 00 72 00 65 00 32 00 2e 00 67 00 6f 00 66 00 69 00 6c 00 65 00 2e 00 69 00 6f 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 } //01 00  https://store2.gofile.io/download/
		$a_01_2 = {00 47 65 74 54 79 70 65 73 00 } //01 00  䜀瑥祔数s
		$a_01_3 = {00 44 6f 77 6e 6c 6f 61 64 44 61 74 61 00 } //01 00  䐀睯汮慯䑤瑡a
		$a_01_4 = {00 47 65 74 53 74 72 69 6e 67 00 } //01 00 
		$a_01_5 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_6 = {00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //00 00  䤀癮歯䵥浥敢r
	condition:
		any of ($a_*)
 
}