
rule TrojanDownloader_BAT_AgentTesla_ABK_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.ABK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 04 00 "
		
	strings :
		$a_03_0 = {1e 5b 6f 3b 90 01 02 0a 6f 90 01 03 0a 00 09 17 6f 90 01 03 0a 00 08 09 6f 90 01 03 0a 17 73 90 01 03 0a 13 06 00 11 06 02 16 02 8e 69 6f 90 01 03 0a 00 11 06 6f 90 01 03 0a 00 00 de 0d 11 06 2c 08 11 06 6f 90 01 03 0a 00 dc 08 6f 90 01 03 0a 0a 00 de 0b 90 00 } //01 00 
		$a_01_1 = {61 00 66 00 61 00 73 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 61 00 73 00 41 00 46 00 53 00 41 00 46 00 } //01 00 
		$a_01_2 = {73 00 61 00 66 00 73 00 61 00 73 00 2e 00 73 00 61 00 66 00 73 00 61 00 73 00 } //01 00 
		$a_01_3 = {73 00 61 00 66 00 73 00 61 00 } //00 00 
	condition:
		any of ($a_*)
 
}