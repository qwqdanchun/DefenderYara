
rule Trojan_BAT_LummaStealer_NLS_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.NLS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {7e 41 00 00 04 07 9a 06 28 90 01 01 00 00 0a 39 90 01 01 00 00 00 7e 90 01 01 00 00 04 74 90 01 01 00 00 01 2a 07 17 58 0b 07 7e 90 01 01 00 00 04 8e 69 3f d2 ff ff ff 90 00 } //01 00 
		$a_01_1 = {50 72 6f 73 69 6d 69 61 6e } //00 00  Prosimian
	condition:
		any of ($a_*)
 
}