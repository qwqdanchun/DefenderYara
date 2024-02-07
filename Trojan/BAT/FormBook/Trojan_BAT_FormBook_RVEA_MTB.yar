
rule Trojan_BAT_FormBook_RVEA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.RVEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {08 07 09 28 90 01 03 06 0b 00 09 15 58 0d 09 16 fe 04 16 fe 01 13 04 11 04 2d e4 90 00 } //01 00 
		$a_01_1 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_01_2 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_3 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_4 = {57 00 61 00 6c 00 6c 00 4a 00 75 00 6d 00 70 00 65 00 72 00 } //01 00  WallJumper
		$a_01_5 = {34 00 41 00 37 00 46 00 43 00 47 00 38 00 44 00 37 00 54 00 4a 00 5a 00 44 00 34 00 59 00 35 00 41 00 53 00 30 00 42 00 37 00 47 00 } //00 00  4A7FCG8D7TJZD4Y5AS0B7G
	condition:
		any of ($a_*)
 
}