
rule Trojan_BAT_OskiStealer_NE_MTB{
	meta:
		description = "Trojan:BAT/OskiStealer.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 28 29 00 00 0a 73 2a 00 00 0a 90 01 01 72 21 00 00 70 90 01 01 28 1d 00 00 0a 09 72 5f 00 00 70 6f 2b 00 00 0a 28 2c 00 00 0a 90 01 03 28 2f 00 00 06 6f 1e 00 00 0a 90 01 01 28 1d 00 00 0a 90 01 02 75 00 00 70 6f 2b 00 00 0a 28 2c 00 00 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}