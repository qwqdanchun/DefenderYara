
rule Trojan_BAT_Stealerc_AAXZ_MTB{
	meta:
		description = "Trojan:BAT/Stealerc.AAXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {05 1f 10 28 90 01 01 00 00 2b 1f 20 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 0c 20 05 00 00 00 38 90 01 02 00 00 11 08 28 90 01 02 00 06 13 09 90 00 } //02 00 
		$a_03_1 = {11 09 09 16 09 8e 69 6f 90 01 01 00 00 0a 13 06 90 00 } //01 00 
		$a_01_2 = {7b 00 7d 00 64 00 7b 00 7d 00 6f 00 7b 00 7d 00 68 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 4d 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 47 00 7b 00 7d 00 } //00 00  {}d{}o{}h{}t{}e{}M{}t{}e{}G{}
	condition:
		any of ($a_*)
 
}