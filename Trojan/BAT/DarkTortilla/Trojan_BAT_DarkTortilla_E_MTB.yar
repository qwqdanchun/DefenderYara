
rule Trojan_BAT_DarkTortilla_E_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {04 05 60 04 66 05 66 60 5f } //02 00 
		$a_01_1 = {02 03 5d 0c 08 } //00 00 
	condition:
		any of ($a_*)
 
}