
rule Trojan_BAT_Injuke_CVAA_MTB{
	meta:
		description = "Trojan:BAT/Injuke.CVAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {ff ff 11 01 16 11 01 8e 69 28 90 01 01 00 00 0a 20 90 00 } //01 00 
		$a_01_1 = {52 65 76 65 72 73 65 } //00 00  Reverse
	condition:
		any of ($a_*)
 
}