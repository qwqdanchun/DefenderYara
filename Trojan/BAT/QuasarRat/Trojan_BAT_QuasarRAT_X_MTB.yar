
rule Trojan_BAT_QuasarRAT_X_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.X!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 9c 06 17 d6 0a 11 90 01 01 17 d6 13 90 00 } //02 00 
		$a_01_1 = {0a 20 ff 00 00 00 fe } //02 00 
		$a_03_2 = {17 da 17 d6 8d 90 01 03 01 0d 16 0a 16 07 17 da 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}