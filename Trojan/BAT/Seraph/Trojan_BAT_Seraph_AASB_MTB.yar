
rule Trojan_BAT_Seraph_AASB_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AASB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {0a 06 06 6f 90 01 01 02 00 0a 06 6f 90 01 01 02 00 0a 6f 90 01 01 02 00 0a 13 04 73 90 01 01 00 00 0a 0b 28 90 01 01 0e 00 06 75 90 01 01 00 00 1b 73 90 01 01 01 00 0a 0c 08 11 04 16 73 90 01 01 02 00 0a 0d 09 07 6f 90 01 01 02 00 0a 07 6f 90 01 01 00 00 0a 13 05 de 1f 09 6f 90 01 01 00 00 0a dc 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}