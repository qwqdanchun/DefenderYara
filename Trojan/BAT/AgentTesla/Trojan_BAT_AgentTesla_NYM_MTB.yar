
rule Trojan_BAT_AgentTesla_NYM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NYM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 64 00 73 00 66 00 66 00 66 00 66 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 68 00 64 00 66 00 66 00 73 00 64 00 66 00 } //01 00  fdsffffhhhhhhhhhhhhhhhhhhhhhhhhdffsdf
		$a_01_1 = {61 00 64 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 61 00 } //01 00  adsssssssssssa
		$a_01_2 = {43 00 3a 00 5c 00 4e 00 65 00 77 00 68 00 54 00 65 00 6d 00 70 00 } //01 00  C:\NewhTemp
		$a_01_3 = {43 00 3a 00 5c 00 54 00 68 00 65 00 6d 00 70 00 } //01 00  C:\Themp
		$a_01_4 = {2f 00 68 00 6f 00 6d 00 65 00 2f 00 6a 00 61 00 6e 00 68 00 62 00 6f 00 64 00 6e 00 61 00 72 00 2f 00 } //00 00  /home/janhbodnar/
	condition:
		any of ($a_*)
 
}