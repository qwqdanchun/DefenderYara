
rule Trojan_BAT_Remcos_MBGA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 0f 04 00 70 6f 90 01 01 00 00 0a 2d 0d 02 72 13 04 00 70 6f 90 01 01 00 00 0a 2b 01 16 0d 09 2c 54 00 02 17 8d 90 01 01 00 00 01 25 16 1f 2d 9d 90 00 } //01 00 
		$a_01_1 = {38 36 31 33 64 37 62 35 34 31 35 66 } //00 00  8613d7b5415f
	condition:
		any of ($a_*)
 
}