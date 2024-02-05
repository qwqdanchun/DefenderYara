
rule TrojanDownloader_BAT_AgentTesla_CVX_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.CVX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 00 07 74 00 70 00 73 00 00 0b 3a 00 2f 00 2f 00 70 00 61 00 00 09 73 00 74 00 65 00 62 00 00 07 69 00 6e 00 2e 00 00 0b 70 00 6c 00 2f 00 76 00 69 00 00 09 65 00 77 00 2f 00 72 00 00 09 61 00 77 00 2f 00 61 00 00 05 65 00 34 00 00 03 } //0a 00 
		$a_01_1 = {68 00 74 00 74 00 00 05 70 00 73 00 00 0b 70 00 61 00 73 00 74 00 65 00 00 0d 62 00 69 00 6e 00 2e 00 70 00 6c 00 00 05 76 00 69 00 00 05 65 00 77 00 00 03 72 00 00 05 61 00 77 00 00 05 38 00 61 00 } //01 00 
		$a_01_2 = {00 54 6f 43 68 61 72 00 } //01 00 
		$a_01_3 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00 
		$a_01_4 = {54 6f 49 6e 74 33 32 } //01 00 
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //00 00 
	condition:
		any of ($a_*)
 
}