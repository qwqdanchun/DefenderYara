
rule TrojanDropper_BAT_Seraph_ARAU_MTB{
	meta:
		description = "TrojanDropper:BAT/Seraph.ARAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_01_0 = {09 13 0b 11 0b 17 58 0d 09 20 00 01 00 00 5d 0d 11 05 11 09 09 94 58 13 05 11 05 20 00 01 00 00 5d 13 05 11 09 09 94 13 07 11 09 09 11 09 11 05 94 9e 11 09 11 05 11 07 9e 11 09 11 09 09 94 11 09 11 05 94 58 20 00 01 00 00 5d 94 13 06 11 0a 11 04 07 11 04 91 11 06 61 d2 9c 11 04 13 0b 11 0b 17 58 13 04 11 04 07 8e 69 32 94 } //00 00 
	condition:
		any of ($a_*)
 
}