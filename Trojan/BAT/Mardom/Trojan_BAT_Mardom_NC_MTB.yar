
rule Trojan_BAT_Mardom_NC_MTB{
	meta:
		description = "Trojan:BAT/Mardom.NC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 08 17 59 25 0c 91 61 1f 10 1f 1f 5f 62 58 90 01 02 08 00 06 0d 09 06 16 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}