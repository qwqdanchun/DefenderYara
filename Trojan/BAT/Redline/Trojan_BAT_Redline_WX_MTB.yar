
rule Trojan_BAT_Redline_WX_MTB{
	meta:
		description = "Trojan:BAT/Redline.WX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0a 06 8e 69 8d 90 01 04 0b 16 0c 38 90 01 04 07 08 06 08 91 03 08 03 6f 90 01 03 0a 5d 6f 90 01 03 0a 61 d2 9c 08 17 58 0c 08 06 8e 69 32 e0 90 00 } //01 00 
		$a_80_1 = {69 00 4a 00 42 00 56 00 5a 00 44 00 72 00 54 00 7a 00 75 00 48 00 77 00 56 00 7a 00 77 00 70 00 41 00 41 00 4d 00 66 00 76 00 6f 00 62 00 4c 00 } //i  01 00 
		$a_80_2 = {38 31 2e 31 36 31 2e 32 32 39 2e 31 31 30 } //81.161.229.110  01 00 
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}