
rule Trojan_BAT_Injuke_IZAA_MTB{
	meta:
		description = "Trojan:BAT/Injuke.IZAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {08 09 07 09 91 20 ab 6f 00 00 28 90 01 01 08 00 06 28 90 01 01 00 00 0a 59 d2 9c 09 17 58 0d 09 07 8e 69 32 df 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}