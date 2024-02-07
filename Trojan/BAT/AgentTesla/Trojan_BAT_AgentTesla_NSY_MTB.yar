
rule Trojan_BAT_AgentTesla_NSY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NSY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 64 00 61 00 66 00 61 00 2e 00 66 00 61 00 } //01 00  https://dafa.fa
		$a_81_1 = {73 61 65 6e 63 72 79 70 74 65 64 72 65 70 6f 72 74 } //01 00  saencryptedreport
		$a_81_2 = {43 3a 5c 73 6f 6d 65 64 69 72 65 63 74 6f 72 79 } //01 00  C:\somedirectory
		$a_81_3 = {77 73 77 73 77 73 } //01 00  wswsws
		$a_81_4 = {73 73 66 66 66 66 66 66 73 64 64 64 66 66 64 64 64 20 } //01 00  ssffffffsdddffddd 
		$a_81_5 = {73 65 64 64 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 64 66 66 65 78 65 } //00 00  seddfffffffffffffffffdffexe
	condition:
		any of ($a_*)
 
}