
rule Trojan_BAT_Redline_GMX_MTB{
	meta:
		description = "Trojan:BAT/Redline.GMX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {11 07 11 04 11 02 11 04 91 02 11 04 02 28 90 01 03 06 5d 28 90 01 03 06 61 d2 9c 20 90 01 04 38 90 01 04 11 06 2a 90 00 } //0a 00 
		$a_03_1 = {11 03 11 04 11 02 11 04 91 02 11 04 02 6f 90 01 03 0a 5d 6f 90 01 03 0a 61 d2 9c 20 90 00 } //0a 00 
		$a_03_2 = {11 03 11 04 11 02 11 04 91 02 11 04 02 6f 90 01 03 0a 5d 28 90 01 03 06 61 d2 9c 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}