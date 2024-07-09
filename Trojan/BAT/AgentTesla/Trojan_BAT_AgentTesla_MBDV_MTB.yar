
rule Trojan_BAT_AgentTesla_MBDV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBDV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 15 16 13 16 2b 28 00 11 14 11 16 18 6f ?? 00 00 0a 20 03 02 00 00 28 ?? 00 00 0a 13 18 11 15 11 18 6f ?? 00 00 0a 00 11 16 18 58 13 16 00 11 16 11 14 6f ?? 00 00 0a fe 04 13 19 11 19 2d c7 } //1
		$a_01_1 = {35 00 41 00 39 00 30 00 30 00 30 00 30 00 33 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 30 00 30 00 30 00 30 00 30 00 30 00 46 00 46 00 46 00 46 00 30 00 30 00 30 00 } //1 5A90000300000004000000FFFF000
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}