
rule Trojan_BAT_AgentTesla_MAD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0a 00 00 0a 00 "
		
	strings :
		$a_03_0 = {02 07 02 8e 69 5d 02 07 02 8e 69 5d 91 06 07 06 8e 69 5d 91 61 28 90 01 03 0a 02 07 17 58 02 8e 69 5d 91 90 00 } //05 00 
		$a_01_1 = {41 62 7a 5f 30 30 32 } //05 00  Abz_002
		$a_01_2 = {41 62 7a 5f 30 30 32 00 64 61 74 61 32 00 4d 61 78 69 6d 69 7a 65 00 4d 69 6e 69 6d 69 7a 65 00 4f 6e 53 74 61 74 65 43 68 61 6e 67 65 64 } //01 00  扁彺〰2慤慴2慍楸業敺䴀湩浩穩e湏瑓瑡䍥慨杮摥
		$a_01_3 = {54 72 61 79 43 6c 69 65 6e 74 } //01 00  TrayClient
		$a_01_4 = {49 6e 64 69 63 61 74 6f 72 53 65 72 76 65 72 } //01 00  IndicatorServer
		$a_01_5 = {47 65 74 49 6e 64 69 63 61 74 6f 72 53 74 61 74 65 73 } //01 00  GetIndicatorStates
		$a_01_6 = {44 65 73 65 72 69 61 6c 69 7a 65 } //01 00  Deserialize
		$a_01_7 = {53 74 61 72 74 54 69 6d 65 72 } //01 00  StartTimer
		$a_01_8 = {47 65 74 44 6f 6d 61 69 6e } //01 00  GetDomain
		$a_01_9 = {51 75 70 6c 61 2e 49 6e 64 69 63 61 74 6f 72 53 65 72 76 65 72 2e 54 72 61 79 43 6c 69 65 6e 74 } //00 00  Qupla.IndicatorServer.TrayClient
	condition:
		any of ($a_*)
 
}