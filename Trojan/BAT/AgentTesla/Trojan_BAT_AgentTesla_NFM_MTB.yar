
rule Trojan_BAT_AgentTesla_NFM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 72 00 00 05 65 00 73 00 00 05 6f 00 75 00 00 05 72 00 63 00 00 1d 64 00 44 00 46 00 48 00 20 00 45 00 52 00 59 00 45 00 35 00 59 00 48 00 5a 00 4e 00 00 1f 41 00 47 00 34 00 54 } //01 00 
		$a_81_1 = {5a 4b 43 45 49 45 20 53 47 20 47 46 44 48 46 44 48 39 } //01 00  ZKCEIE SG GFDHFDH9
		$a_81_2 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 4e 61 6d 65 73 } //01 00  GetManifestResourceNames
		$a_81_3 = {57 45 51 50 45 4f 49 57 48 46 4a 4e 42 56 47 55 45 53 46 37 38 45 38 52 } //01 00  WEQPEOIWHFJNBVGUESF78E8R
		$a_81_4 = {35 35 53 35 35 79 35 73 35 74 35 65 35 35 6d } //01 00  55S55y5s5t5e55m
		$a_81_5 = {35 52 65 35 35 66 6c 65 35 35 35 63 74 69 35 35 6f 6e } //01 00  5Re55fle555cti55on
		$a_81_6 = {35 35 41 73 35 35 73 65 35 6d 35 62 35 6c 35 79 35 } //00 00  55As55se5m5b5l5y5
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NFM_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NFM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {20 6b 0e 00 00 95 2e 03 16 2b 01 17 17 59 7e 09 00 00 04 20 4a 0b 00 00 06 0a 95 5f 7e 09 00 00 04 20 9e 12 00 00 95 61 59 80 38 00 00 04 7e 38 00 00 04 7e 09 00 00 04 20 43 0a 00 00 95 33 0f } //0a 00 
		$a_01_1 = {c8 0e 00 00 95 5a 7e 1d 00 00 04 1b 06 0c 9a 20 19 03 00 00 95 2e 03 16 2b 01 17 17 59 7e 1d 00 00 04 1b 9a 20 35 07 00 00 95 5f 7e 1d 00 00 04 1b 9a 20 60 02 00 00 95 61 58 81 05 00 00 01 38 fb 05 00 00 } //01 00 
		$a_01_2 = {41 70 70 44 6f 6d 61 69 6e } //01 00  AppDomain
		$a_01_3 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00  GetFolderPath
		$a_01_4 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_01_5 = {67 65 74 5f 42 61 73 65 44 69 72 65 63 74 6f 72 79 } //00 00  get_BaseDirectory
	condition:
		any of ($a_*)
 
}