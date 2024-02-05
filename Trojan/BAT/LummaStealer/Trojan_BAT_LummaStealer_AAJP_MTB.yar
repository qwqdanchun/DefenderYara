
rule Trojan_BAT_LummaStealer_AAJP_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.AAJP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {11 05 17 28 90 01 01 05 00 06 20 00 00 00 00 28 90 01 01 05 00 06 3a 90 01 01 ff ff ff 26 20 00 00 00 00 38 90 01 01 ff ff ff 00 11 05 11 0a 6f 90 01 01 00 00 0a 20 01 00 00 00 28 90 01 01 05 00 06 39 90 01 01 ff ff ff 26 38 90 01 01 ff ff ff 00 11 09 11 04 16 11 04 8e 69 28 90 01 01 05 00 06 13 07 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}