
rule Trojan_BAT_PureLogStealer_HLAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.HLAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {11 01 11 03 11 04 11 03 91 11 02 11 03 11 02 28 90 01 01 00 00 06 5d 28 90 01 01 00 00 06 61 d2 9c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}