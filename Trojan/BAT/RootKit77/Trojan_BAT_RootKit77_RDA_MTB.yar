
rule Trojan_BAT_RootKit77_RDA_MTB{
	meta:
		description = "Trojan:BAT/RootKit77.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_01_0 = {13 0b 11 0a 11 06 28 10 00 00 06 26 11 0a 11 06 07 6a 20 00 30 00 00 1f 40 28 0e 00 00 06 26 11 0a 11 06 02 08 16 6a 28 0f 00 00 06 26 16 } //00 00 
	condition:
		any of ($a_*)
 
}