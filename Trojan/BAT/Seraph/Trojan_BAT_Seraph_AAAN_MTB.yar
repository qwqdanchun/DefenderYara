
rule Trojan_BAT_Seraph_AAAN_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {11 06 11 02 11 06 11 01 11 02 59 17 59 91 9c } //02 00 
		$a_01_1 = {11 06 11 01 11 02 59 17 59 11 03 9c } //00 00 
	condition:
		any of ($a_*)
 
}