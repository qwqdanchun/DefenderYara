
rule Trojan_BAT_Tiny_PTCK_MTB{
	meta:
		description = "Trojan:BAT/Tiny.PTCK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {2c 5a 00 00 06 28 90 01 01 00 00 0a 0c 08 6f 14 00 00 0a 0d 09 14 28 90 01 01 00 00 0a 13 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}