
rule Trojan_BAT_AgentTesla_RPM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 34 00 32 00 2e 00 31 00 33 00 32 00 2e 00 31 00 37 00 36 00 2e 00 32 00 31 00 37 00 } //01 00  142.132.176.217
		$a_01_1 = {50 00 65 00 6f 00 70 00 6c 00 65 00 2e 00 7a 00 69 00 70 00 } //01 00  People.zip
		$a_01_2 = {42 00 69 00 6c 00 6c 00 79 00 42 00 6f 00 79 00 } //01 00  BillyBoy
		$a_01_3 = {4c 00 69 00 6e 00 6b 00 43 00 72 00 69 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  LinkCriate.exe
		$a_01_4 = {4a 00 4b 00 41 00 73 00 62 00 68 00 31 00 32 00 38 00 37 00 33 00 36 00 4e 00 4a 00 42 00 } //00 00  JKAsbh128736NJB
	condition:
		any of ($a_*)
 
}