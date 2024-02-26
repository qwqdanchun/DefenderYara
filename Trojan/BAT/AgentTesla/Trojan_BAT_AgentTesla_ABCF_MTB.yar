
rule Trojan_BAT_AgentTesla_ABCF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABCF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {48 00 6f 00 74 00 65 00 6c 00 5f 00 6d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //03 00  Hotel_management.Resources
		$a_01_1 = {69 00 75 00 79 00 30 00 38 00 37 00 36 00 66 00 74 00 74 00 } //02 00  iuy0876ftt
		$a_01_2 = {4e 00 63 00 75 00 69 00 73 00 64 00 68 00 66 00 69 00 69 00 75 00 66 00 } //02 00  Ncuisdhfiiuf
		$a_01_3 = {72 00 72 00 53 00 72 00 79 00 72 00 73 00 72 00 74 00 72 00 65 00 72 00 6d 00 72 00 2e 00 72 00 52 00 72 00 65 00 72 00 66 00 72 00 6c 00 72 00 65 00 72 00 63 00 72 00 74 00 72 00 69 00 6f 00 72 00 6e 00 72 00 2e 00 72 00 41 00 72 00 72 00 72 00 73 00 72 00 73 00 72 00 65 00 72 00 6d 00 72 00 62 00 72 00 72 00 6c 00 72 00 72 00 79 00 72 00 } //02 00  rrSryrsrtrermr.rRrerfrlrercrtriornr.rArrrsrsrermrbrrlrryr
		$a_01_4 = {72 00 6f 00 41 00 64 00 4c 00 6f 00 61 00 64 00 } //00 00  roAdLoad
	condition:
		any of ($a_*)
 
}