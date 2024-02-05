
rule TrojanDownloader_BAT_AgentTesla_R_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.R!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {50 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //02 00 
		$a_01_1 = {56 00 42 00 73 00 63 00 72 00 69 00 70 00 74 00 } //02 00 
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //02 00 
		$a_01_3 = {52 75 6e 6d 65 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00 
	condition:
		any of ($a_*)
 
}