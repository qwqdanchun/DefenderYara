
rule Trojan_BAT_RiseProStealer_AAUM_MTB{
	meta:
		description = "Trojan:BAT/RiseProStealer.AAUM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {11 05 11 03 6f 90 01 01 00 00 0a 38 00 00 00 00 00 00 11 05 6f 90 01 01 00 00 0a 13 06 38 00 00 00 00 00 11 06 11 0a 16 11 0a 8e 69 6f 90 01 01 00 00 0a 13 07 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}