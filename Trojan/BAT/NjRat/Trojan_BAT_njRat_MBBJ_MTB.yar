
rule Trojan_BAT_njRat_MBBJ_MTB{
	meta:
		description = "Trojan:BAT/njRat.MBBJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 32 00 33 00 00 a9 d9 51 00 37 00 42 00 67 00 5a 00 41 00 46 00 4b 00 78 00 67 00 77 00 6b 00 32 00 4c 00 49 00 52 00 79 00 44 00 43 00 4d 00 48 00 75 00 67 00 44 00 41 } //01 00 
		$a_01_1 = {43 00 50 00 58 00 4f 00 78 00 37 00 36 00 39 00 30 00 42 00 73 00 39 00 57 00 59 00 62 00 61 00 77 00 75 00 70 00 76 00 47 00 68 } //00 00 
	condition:
		any of ($a_*)
 
}