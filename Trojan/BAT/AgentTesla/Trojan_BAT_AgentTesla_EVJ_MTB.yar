
rule Trojan_BAT_AgentTesla_EVJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EVJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 37 63 30 34 34 30 65 35 2d 33 62 35 65 2d 34 31 65 37 2d 38 32 35 32 2d 33 61 37 32 38 61 61 64 33 64 38 39 } //01 00  $7c0440e5-3b5e-41e7-8252-3a728aad3d89
		$a_01_1 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_2 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //01 00  䐀扥杵楧杮潍敤s
		$a_01_3 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //01 00  䌀敲瑡䥥獮慴据e
		$a_01_4 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //01 00 
		$a_01_5 = {00 47 65 74 48 49 4e 53 54 41 4e 43 45 00 } //00 00  䜀瑥䥈华䅔䍎E
	condition:
		any of ($a_*)
 
}