
rule Trojan_BAT_Bladabindi_ABTR_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ABTR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {0f 00 08 20 00 04 00 00 58 28 90 01 01 00 00 2b 07 02 08 20 00 04 00 00 20 19 03 00 00 20 01 03 00 00 28 90 01 01 00 00 06 0d 1f 0c 13 0d 90 00 } //01 00 
		$a_01_1 = {44 65 66 6c 61 74 65 53 74 72 65 61 6d } //00 00  DeflateStream
	condition:
		any of ($a_*)
 
}