
rule Trojan_BAT_FormBook_AHAH_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AHAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 08 09 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 d2 06 28 90 01 03 06 00 00 09 1b 59 1c 58 0d 09 17 fe 04 13 09 11 09 2d c3 06 17 58 90 00 } //01 00 
		$a_01_1 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_2 = {41 00 65 00 65 00 65 00 65 00 } //01 00  Aeeee
		$a_01_3 = {57 00 69 00 6c 00 6c 00 69 00 73 00 52 00 75 00 62 00 69 00 63 00 73 00 43 00 75 00 62 00 65 00 } //00 00  WillisRubicsCube
	condition:
		any of ($a_*)
 
}