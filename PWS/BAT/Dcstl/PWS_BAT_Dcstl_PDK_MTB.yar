
rule PWS_BAT_Dcstl_PDK_MTB{
	meta:
		description = "PWS:BAT/Dcstl.PDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 12 02 fe 90 01 03 00 01 12 02 28 90 01 03 0a 25 2d 06 26 72 90 01 03 70 7d 90 01 03 0a 12 02 02 7b 90 01 03 04 6f 90 01 03 0a 25 2d 06 26 90 00 } //01 00 
		$a_03_1 = {0a 16 0b 2b 1f 06 07 9a 0c 02 7b 90 01 03 04 6f 90 01 03 0a 08 6f 90 01 03 0a 6f 90 01 03 0a 26 07 17 58 0b 90 00 } //01 00 
		$a_03_2 = {06 07 9a 6f 90 01 03 0a 07 17 58 0b 07 06 8e 69 32 ee 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}