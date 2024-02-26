
rule Trojan_BAT_LummaStealer_CCFY_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.CCFY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 61 00 6c 00 58 00 58 00 58 } //01 00 
		$a_01_1 = {58 00 4e 00 61 00 6d 00 65 } //01 00 
		$a_01_2 = {06 49 06 35 06 43 06 27 06 28 06 6d 00 61 00 4e 00 79 00 42 00 6c 00 6c } //01 00  䤆㔆䌆✆⠆洆愀一礀䈀氀氀
		$a_01_3 = {73 00 6a 00 69 00 65 00 67 00 68 00 73 00 65 00 67 00 4e 00 61 00 6d 00 34 00 34 00 34 00 34 00 65 } //01 00 
		$a_01_4 = {53 00 2d 00 74 00 2d 00 2f 00 75 00 2f 00 2d 00 2f 00 62 00 2f 00 2d } //00 00 
	condition:
		any of ($a_*)
 
}