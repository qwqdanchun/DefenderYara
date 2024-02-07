
rule Trojan_BAT_Remcos_AREC_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AREC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 0d 2b 36 00 07 08 09 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 17 13 04 00 28 90 01 03 06 d2 06 28 90 01 03 06 00 00 00 09 17 58 90 00 } //01 00 
		$a_01_1 = {41 00 74 00 74 00 65 00 6e 00 75 00 61 00 74 00 6f 00 72 00 54 00 65 00 73 00 74 00 } //01 00  AttenuatorTest
		$a_01_2 = {69 00 6e 00 74 00 65 00 6c 00 32 00 32 00 } //01 00  intel22
		$a_01_3 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}