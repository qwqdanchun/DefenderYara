
rule Trojan_BAT_Marsilia_NMA_MTB{
	meta:
		description = "Trojan:BAT/Marsilia.NMA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 73 0d 00 70 28 90 01 02 00 0a 6f af 00 00 0a 6f 90 01 02 00 0a 73 76 00 00 0a 6f 90 01 02 00 0a 0a 06 72 90 01 02 00 70 28 1b 00 00 0a 2c 17 72 90 01 02 00 70 72 c7 0d 00 70 28 90 01 02 00 0a 26 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}