
rule Trojan_BAT_NjRat_CEN_MTB{
	meta:
		description = "Trojan:BAT/NjRat.CEN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 2d 00 00 0a 0d 72 90 01 03 70 17 8d 90 01 03 01 25 16 1f 2c 9d 28 90 01 03 0a 13 04 7e 90 01 03 0a 13 05 16 13 06 16 13 07 06 90 00 } //01 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 2e 4d 79 } //01 00  WindowsApplication1.My
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}