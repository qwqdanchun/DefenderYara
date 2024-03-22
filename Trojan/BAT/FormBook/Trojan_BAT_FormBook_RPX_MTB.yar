
rule Trojan_BAT_FormBook_RPX_MTB{
	meta:
		description = "Trojan:BAT/FormBook.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {1f 16 5d 91 13 0c 07 11 0a 91 11 07 58 13 0d 07 11 09 11 0b 11 0c 61 11 0d 11 07 5d 59 d2 9c 11 06 17 58 13 06 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_RPX_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {0b 16 0c 2b 1a 00 07 08 18 5b 02 08 18 6f 70 00 00 0a 1f 10 28 71 00 00 0a 9c 00 08 18 58 0c 08 06 fe 04 0d 09 2d de } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_RPX_MTB_3{
	meta:
		description = "Trojan:BAT/FormBook.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {09 1f 16 5d 91 61 07 09 17 58 08 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 13 06 07 11 05 11 06 9c 11 04 07 11 05 91 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_RPX_MTB_4{
	meta:
		description = "Trojan:BAT/FormBook.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 11 05 11 08 11 04 11 08 18 5a 18 6f c0 00 00 0a 1f 10 28 c1 00 00 0a d2 9c 00 11 08 17 58 13 08 11 08 11 05 8e 69 fe 04 13 09 11 09 2d d1 } //01 00 
		$a_01_1 = {58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 2d 00 58 00 } //00 00  X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_RPX_MTB_5{
	meta:
		description = "Trojan:BAT/FormBook.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 69 00 6c 00 65 00 73 00 2e 00 63 00 61 00 74 00 62 00 6f 00 78 00 2e 00 6d 00 6f 00 65 00 } //01 00  files.catbox.moe
		$a_01_1 = {66 00 6f 00 35 00 79 00 36 00 75 00 2e 00 76 00 64 00 66 00 } //01 00  fo5y6u.vdf
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_3 = {43 72 79 70 74 6f 53 74 72 65 61 6d } //01 00  CryptoStream
		$a_01_4 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_5 = {52 65 73 6f 6c 76 65 54 68 72 65 61 64 } //00 00  ResolveThread
	condition:
		any of ($a_*)
 
}