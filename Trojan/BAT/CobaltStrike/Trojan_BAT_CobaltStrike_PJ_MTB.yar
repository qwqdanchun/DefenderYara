
rule Trojan_BAT_CobaltStrike_PJ_MTB{
	meta:
		description = "Trojan:BAT/CobaltStrike.PJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 41 00 53 00 44 00 53 00 41 00 44 00 53 00 41 00 44 00 53 00 41 00 44 00 41 00 53 00 44 00 41 00 53 00 } //01 00  DASDSADSADSADASDAS
		$a_03_1 = {08 94 9e 11 90 01 01 08 11 90 01 01 9e 11 90 01 01 11 90 01 01 06 94 11 90 01 01 08 94 58 20 00 01 00 00 5d 94 0d 11 90 01 01 07 03 07 91 09 61 d2 9c 00 07 17 58 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}