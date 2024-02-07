
rule Trojan_BAT_NjRat_NEBU_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEBU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {13 0d 11 0d 11 0c 6f 21 00 00 0a 16 13 0e 2b 21 11 09 11 0e 8f 07 00 00 01 25 71 07 00 00 01 11 0c 11 0e 91 61 d2 81 07 00 00 01 11 0e 17 58 13 0e 11 0e 11 08 32 d9 } //05 00 
		$a_01_1 = {54 00 56 00 20 00 71 00 71 00 20 00 51 00 20 00 41 00 } //02 00  TV qq Q A
		$a_01_2 = {64 37 33 36 37 36 33 34 64 33 38 36 34 64 30 66 38 61 63 33 65 36 33 38 36 62 38 36 35 31 31 65 } //01 00  d7367634d3864d0f8ac3e6386b86511e
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_4 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //00 00  GetExecutingAssembly
	condition:
		any of ($a_*)
 
}