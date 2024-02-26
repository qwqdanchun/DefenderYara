
rule Trojan_Win32_Guloader_SPLD_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SPLD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 6f 00 6e 00 74 00 6f 00 62 00 65 00 73 00 74 00 65 00 6d 00 74 00 65 00 2e 00 74 00 75 00 72 00 } //01 00  Kontobestemte.tur
		$a_01_1 = {41 00 6d 00 70 00 68 00 69 00 62 00 69 00 6f 00 6c 00 6f 00 67 00 79 00 2e 00 74 00 78 00 74 00 } //01 00  Amphibiology.txt
		$a_01_2 = {53 00 63 00 61 00 6e 00 74 00 65 00 72 00 2e 00 6d 00 69 00 73 00 } //01 00  Scanter.mis
		$a_01_3 = {63 00 69 00 73 00 65 00 6c 00 65 00 72 00 65 00 72 00 2e 00 61 00 72 00 6b 00 } //01 00  ciselerer.ark
		$a_01_4 = {69 00 73 00 6f 00 65 00 74 00 61 00 6c 00 65 00 73 00 2e 00 68 00 6f 00 66 00 } //01 00  isoetales.hof
		$a_01_5 = {50 00 6f 00 62 00 6c 00 61 00 63 00 68 00 74 00 35 00 31 00 2e 00 75 00 64 00 74 00 } //00 00  Poblacht51.udt
	condition:
		any of ($a_*)
 
}