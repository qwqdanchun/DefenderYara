
rule Trojan_AndroidOS_Anubis_W{
	meta:
		description = "Trojan:AndroidOS/Anubis.W,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {dc 05 02 03 44 06 04 05 e2 06 06 08 44 07 04 05 e0 07 07 18 b6 76 b0 16 b7 26 4b 06 04 05 e2 06 01 1d e0 01 01 03 b6 61 44 05 04 05 b7 51 d8 02 02 01 4b 01 03 02 28 e1 } //01 00 
		$a_02_1 = {12 08 e0 09 0b 10 b6 a9 4b 09 07 08 12 18 e0 09 0d 10 b6 c9 4b 09 07 08 44 90 02 04 07 90 02 04 dc 07 02 04 e0 07 07 03 b9 90 02 04 8d 90 02 04 48 07 90 02 04 03 b7 90 02 04 8d 90 02 04 8d 90 02 04 4f 90 02 04 03 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}