
rule Trojan_BAT_PureLogStealer_APL_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.APL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 13 04 17 13 05 38 90 01 01 00 00 00 11 04 11 05 58 13 04 11 05 17 58 13 05 11 05 02 31 ee 07 6f 90 01 01 00 00 0a 28 90 01 01 00 00 2b 13 06 11 04 28 90 01 01 00 00 0a 11 04 1f 32 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}