
rule Trojan_BAT_FormBook_YAU_MTB{
	meta:
		description = "Trojan:BAT/FormBook.YAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 09 20 00 36 00 00 5d 07 09 20 00 36 00 00 5d 91 08 09 1f 16 5d 6f 90 01 03 0a 61 28 90 01 03 06 07 09 17 58 20 00 36 00 00 5d 91 28 90 01 03 06 59 20 00 01 00 00 58 20 00 01 00 00 5d 28 90 01 03 06 9c 00 09 15 58 0d 09 16 fe 04 16 fe 01 13 04 11 04 2d a9 90 00 } //01 00 
		$a_01_1 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_01_2 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_01_3 = {49 6e 76 6f 6b 65 } //01 00 
		$a_01_4 = {54 00 52 00 4d 00 53 00 2e 00 43 00 61 00 72 00 6f 00 75 00 73 00 65 00 6c 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 } //01 00 
		$a_01_5 = {31 00 32 00 44 00 59 00 34 00 35 00 46 00 46 00 35 00 34 00 53 00 45 00 59 00 38 00 51 00 4b 00 59 00 47 00 42 00 41 00 35 00 52 00 } //00 00 
	condition:
		any of ($a_*)
 
}