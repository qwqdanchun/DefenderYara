
rule Trojan_BAT_Crysan_AAIO_MTB{
	meta:
		description = "Trojan:BAT/Crysan.AAIO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {11 04 09 6f 90 01 01 00 00 0a 11 04 07 6f 90 01 01 00 00 0a 11 04 11 04 6f 90 01 01 00 00 0a 11 04 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 13 05 02 28 90 01 01 00 00 0a 73 90 01 01 00 00 0a 13 06 11 06 11 05 16 73 90 01 01 00 00 0a 13 07 11 07 73 90 01 01 00 00 0a 13 08 11 08 6f 90 01 01 00 00 0a 0a dd 90 01 01 00 00 00 11 08 39 90 01 01 00 00 00 11 08 6f 90 01 01 00 00 0a dc 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}