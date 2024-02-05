
rule TrojanDownloader_BAT_AgentTesla_KAB_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 0b 02 28 90 01 03 06 28 90 01 03 2b 28 90 01 03 2b 28 90 01 03 0a 6f 90 01 03 0a 90 0a 26 00 72 90 01 03 70 0a 73 90 00 } //01 00 
		$a_01_1 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //00 00 
	condition:
		any of ($a_*)
 
}