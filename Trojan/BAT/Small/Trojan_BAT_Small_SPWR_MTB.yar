
rule Trojan_BAT_Small_SPWR_MTB{
	meta:
		description = "Trojan:BAT/Small.SPWR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {02 7b 01 00 00 04 02 7b 0c 00 00 04 02 7b 0b 00 00 04 28 90 01 03 0a 6f 90 01 03 0a 02 02 7b 01 00 00 04 6f 90 01 03 0a 7d 02 00 00 04 02 02 7b 02 00 00 04 73 1d 00 00 0a 7d 04 00 00 04 02 02 7b 02 00 00 04 73 1e 00 00 0a 7d 03 00 00 04 02 02 90 00 } //01 00 
		$a_01_1 = {64 69 73 63 6f 73 44 75 72 6f 73 } //00 00  discosDuros
	condition:
		any of ($a_*)
 
}