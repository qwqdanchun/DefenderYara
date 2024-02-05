
rule Trojan_BAT_Remcos_IGGA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.IGGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {72 7c 07 00 70 6f 90 01 03 0a 74 17 00 00 1b 0a 17 72 88 07 00 70 28 90 01 03 06 0b 73 fd 00 00 0a 0c 08 1f 10 07 28 90 01 03 06 74 17 00 00 1b 6f 90 01 03 0a 00 08 1f 10 07 28 90 01 03 06 74 17 00 00 1b 6f 90 01 03 0a 00 08 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 0d 09 8e 69 1f 10 59 90 00 } //01 00 
		$a_01_1 = {35 00 37 00 48 00 33 00 46 00 4e 00 50 00 43 00 35 00 34 00 4a 00 48 00 58 00 46 00 46 00 46 00 38 00 44 00 43 00 33 00 34 00 37 00 } //01 00 
		$a_01_2 = {51 00 61 00 75 00 6c 00 69 00 } //00 00 
	condition:
		any of ($a_*)
 
}