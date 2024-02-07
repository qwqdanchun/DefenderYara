
rule Trojan_UEFI_VectorEDK_D{
	meta:
		description = "Trojan:UEFI/VectorEDK.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {49 b9 03 00 00 00 00 00 00 80 90 01 0b ff 90 01 01 08 90 00 } //01 00 
		$a_03_1 = {41 b9 03 00 00 00 90 01 0b ff 90 01 01 08 90 00 } //01 00 
		$a_00_2 = {61 df e4 8b ca 93 d2 11 aa 0d 00 e0 98 30 22 88 } //01 00 
		$a_00_3 = {a1 31 1b 5b 62 95 d2 11 8e 3f 00 a0 c9 69 72 3b } //01 00 
		$a_00_4 = {22 5b 4e 96 59 64 d2 11 8e 39 00 a0 c9 69 72 3b } //01 00 
		$a_00_5 = {66 00 54 00 41 00 00 00 } //01 00 
		$a_00_6 = {2e 73 72 61 77 } //00 00  .sraw
	condition:
		any of ($a_*)
 
}