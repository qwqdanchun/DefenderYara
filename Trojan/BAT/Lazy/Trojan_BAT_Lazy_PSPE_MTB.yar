
rule Trojan_BAT_Lazy_PSPE_MTB{
	meta:
		description = "Trojan:BAT/Lazy.PSPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {73 05 00 00 0a 0a 28 90 01 03 0a 02 6f 90 01 03 0a 13 04 12 04 28 90 01 03 0a 72 3f 00 00 70 28 90 01 03 0a 6f 90 01 03 0a 0b 28 90 01 03 0a 02 6f 90 01 03 0a 0c 06 14 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}