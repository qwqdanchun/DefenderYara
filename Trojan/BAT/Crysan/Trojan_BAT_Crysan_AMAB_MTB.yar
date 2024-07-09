
rule Trojan_BAT_Crysan_AMAB_MTB{
	meta:
		description = "Trojan:BAT/Crysan.AMAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 08 11 04 6f ?? 00 00 0a 08 08 6f ?? 00 00 0a 08 ?? 21 00 00 0a 6f ?? 00 00 0a 13 05 73 ?? 00 00 0a 13 06 11 06 11 05 17 73 ?? 00 00 0a 13 07 06 72 ?? ?? ?? 70 6f ?? 00 00 0a 2c 5d 06 06 72 ?? ?? ?? 70 6f ?? 00 00 0a 72 ?? ?? ?? 70 28 ?? 00 00 0a 58 6f ?? 00 00 0a 28 ?? 00 00 0a 13 08 11 07 11 08 16 11 08 8e 69 6f ?? 00 00 0a 11 07 6f ?? 00 00 0a 11 07 6f ?? 00 00 0a 11 06 6f ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 00 00 0a 14 16 8d } //1
		$a_80_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //CreateDecryptor  1
	condition:
		((#a_03_0  & 1)*1+(#a_80_1  & 1)*1) >=2
 
}