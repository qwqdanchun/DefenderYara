
rule Trojan_BAT_Redline_GDD_MTB{
	meta:
		description = "Trojan:BAT/Redline.GDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0c 08 03 04 04 72 b6 22 00 70 6f 90 01 03 0a 2d 03 18 2b 01 17 05 6f 90 01 03 0a 13 04 2b 00 11 04 90 00 } //01 00 
		$a_80_1 = {49 67 70 56 49 42 50 76 32 } //IgpVIBPv2  01 00 
		$a_80_2 = {43 6d 39 6f 38 33 67 6d } //Cm9o83gm  01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}