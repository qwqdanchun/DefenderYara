
rule Trojan_BAT_AgentTesla_DVY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DVY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 50 4f 45 52 43 58 5f 34 33 36 35 35 36 00 4c 65 76 65 6c 00 } //01 00 
		$a_01_1 = {00 70 6f 00 50 4f 45 52 43 58 5f 33 31 34 32 34 00 } //01 00 
		$a_01_2 = {00 78 73 61 00 50 4f 45 52 43 58 5f 33 32 31 34 00 } //01 00 
		$a_01_3 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_01_4 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_5 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //01 00  䐀扥杵楧杮潍敤s
		$a_01_6 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_01_7 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_8 = {00 47 65 74 4d 65 74 68 6f 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}