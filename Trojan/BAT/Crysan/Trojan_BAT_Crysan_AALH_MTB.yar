
rule Trojan_BAT_Crysan_AALH_MTB{
	meta:
		description = "Trojan:BAT/Crysan.AALH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {72 ef 00 00 70 6f 90 01 01 00 00 0a 0a 73 90 01 01 00 00 0a 0b 73 90 01 01 00 00 0a 0c 08 06 6f 90 01 01 00 00 0a 0d 07 09 6f 90 01 01 00 00 0a 07 18 6f 90 01 01 00 00 0a 02 13 04 07 6f 90 01 01 00 00 0a 11 04 16 11 04 8e 69 6f 90 01 01 00 00 0a 13 05 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}