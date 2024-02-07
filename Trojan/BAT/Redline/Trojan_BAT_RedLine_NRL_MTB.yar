
rule Trojan_BAT_RedLine_NRL_MTB{
	meta:
		description = "Trojan:BAT/RedLine.NRL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 c9 02 00 06 0a 28 90 01 02 00 06 0b 07 1f 20 8d 90 01 02 00 01 25 d0 90 01 02 00 04 28 90 01 02 00 0a 6f 90 01 02 00 0a 07 1f 10 8d 90 01 02 00 01 25 d0 90 01 02 00 04 28 90 01 02 00 0a 6f 90 01 02 00 0a 06 07 6f 90 01 02 00 0a 17 73 90 01 02 00 0a 25 02 16 02 8e 69 6f 90 01 02 00 0a 6f 90 01 02 00 0a 06 28 90 01 02 00 06 28 90 01 02 00 06 2a 90 00 } //01 00 
		$a_01_1 = {53 61 63 72 65 64 6c 79 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Sacredly.g.resources
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //00 00  FromBase64CharArray
	condition:
		any of ($a_*)
 
}