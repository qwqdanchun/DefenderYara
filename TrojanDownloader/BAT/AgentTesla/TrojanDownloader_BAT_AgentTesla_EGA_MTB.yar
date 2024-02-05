
rule TrojanDownloader_BAT_AgentTesla_EGA_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.EGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {7b 00 22 00 73 00 74 00 61 00 74 00 75 00 73 00 22 00 3a 00 74 00 72 00 75 00 65 00 2c 00 22 00 64 00 61 00 74 00 61 00 22 00 3a 00 30 00 2e 00 30 00 30 00 30 00 30 00 34 00 31 00 33 00 30 00 32 00 34 00 34 00 39 00 32 00 35 00 38 00 35 00 36 00 34 00 7d } //0a 00 
		$a_01_1 = {00 53 65 72 69 61 6c 69 7a 65 72 00 } //01 00 
		$a_01_2 = {00 47 65 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_3 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_4 = {00 49 6e 76 6f 6b 65 00 } //01 00 
		$a_01_5 = {00 47 65 74 54 79 70 65 } //01 00 
		$a_01_6 = {00 57 65 62 43 6c 69 65 6e 74 00 } //01 00 
		$a_01_7 = {00 48 74 74 70 43 6c 69 65 6e 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}