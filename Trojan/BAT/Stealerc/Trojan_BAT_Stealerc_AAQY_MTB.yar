
rule Trojan_BAT_Stealerc_AAQY_MTB{
	meta:
		description = "Trojan:BAT/Stealerc.AAQY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {06 20 0c 1f 8f f8 28 90 01 01 00 00 06 28 90 01 01 0e 00 06 20 2d 1f 8f f8 28 90 01 01 00 00 06 28 90 01 01 0e 00 06 28 90 01 01 0e 00 06 13 04 90 00 } //4
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=6
 
}