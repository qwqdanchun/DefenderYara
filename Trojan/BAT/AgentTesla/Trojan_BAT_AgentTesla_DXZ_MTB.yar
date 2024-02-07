
rule Trojan_BAT_AgentTesla_DXZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 0d 00 00 09 6f 90 01 03 0a 13 04 16 13 05 38 90 01 04 11 04 11 05 a3 90 01 03 01 13 06 00 11 06 6f 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 13 07 11 07 39 90 01 04 00 11 06 14 14 6f 90 01 03 0a 74 90 01 03 01 13 08 38 90 01 04 00 11 05 17 58 13 05 11 05 11 04 8e 69 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_DXZ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 6f 00 72 00 74 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 6f 00 72 00 } //02 00  SELECT * FROM Win32_PortConnector
		$a_01_1 = {73 00 6d 00 61 00 6b 00 61 00 66 00 31 00 2e 00 70 00 6f 00 6c 00 79 00 63 00 6f 00 6d 00 75 00 73 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 } //02 00  smakaf1.polycomusa.com/
		$a_01_2 = {7a 00 76 00 6f 00 72 00 61 00 63 00 6c 00 65 00 2e 00 70 00 6f 00 6c 00 79 00 63 00 6f 00 6d 00 75 00 73 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00  zvoracle.polycomusa.com/
		$a_81_3 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_81_4 = {43 72 65 61 74 65 52 75 6e 73 70 61 63 65 } //01 00  CreateRunspace
		$a_81_5 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_81_6 = {43 72 65 61 74 65 50 69 70 65 6c 69 6e 65 } //00 00  CreatePipeline
	condition:
		any of ($a_*)
 
}