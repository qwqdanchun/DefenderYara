
rule Trojan_BAT_QuasarRAT_D_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {00 00 0a 0d 12 03 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 16 07 06 4a 1a 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}