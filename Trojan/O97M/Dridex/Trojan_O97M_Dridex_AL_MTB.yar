
rule Trojan_O97M_Dridex_AL_MTB{
	meta:
		description = "Trojan:O97M/Dridex.AL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 22 3d 22 20 26 20 52 65 70 6c 61 63 65 28 90 02 03 2c 20 22 3f 22 2c 20 90 02 0f 28 53 70 6c 69 74 28 90 02 0f 28 30 29 2c 20 90 02 0f 28 90 02 0f 29 29 29 29 90 00 } //01 00 
		$a_03_1 = {28 52 75 6e 28 22 22 20 2b 20 90 02 0f 20 26 20 22 90 02 0f 22 29 29 90 00 } //01 00 
		$a_03_2 = {3d 20 53 70 6c 69 74 28 90 02 03 2c 20 22 21 22 29 3a 20 90 02 03 20 3d 20 53 70 6c 69 74 28 90 02 03 28 90 02 03 29 2c 20 90 02 0f 28 90 02 0f 29 29 0d 0a 46 6f 72 20 45 61 63 68 20 56 6f 90 00 } //01 00 
		$a_03_3 = {46 6f 72 20 45 61 63 68 20 90 02 03 20 49 6e 20 42 76 0d 0a 90 02 04 20 3d 20 90 1b 01 20 2b 20 90 1b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}