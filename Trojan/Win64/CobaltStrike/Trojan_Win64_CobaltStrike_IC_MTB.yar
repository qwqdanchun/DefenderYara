
rule Trojan_Win64_CobaltStrike_IC_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.IC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {42 8a 0c 0a 41 88 09 49 ff c1 49 83 e8 90 01 01 75 90 00 } //01 00 
		$a_01_1 = {49 8b c2 49 f7 f1 42 8a 0c 02 43 30 0c 1a 49 ff c2 4c 3b d3 72 } //00 00 
	condition:
		any of ($a_*)
 
}