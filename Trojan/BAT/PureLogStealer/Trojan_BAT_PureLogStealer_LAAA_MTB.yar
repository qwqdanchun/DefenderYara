
rule Trojan_BAT_PureLogStealer_LAAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.LAAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {16 0c 38 24 00 00 00 02 7b 90 01 01 00 00 04 7b 90 01 01 00 00 04 07 08 16 6f 90 01 01 00 00 0a 0d 12 03 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 08 17 58 0c 08 07 6f 90 01 01 00 00 0a 32 d3 90 00 } //01 00 
		$a_01_1 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}