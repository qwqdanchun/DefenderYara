
rule Ransom_Win32_WannaCash_SK_MTB{
	meta:
		description = "Ransom:Win32/WannaCash.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6c 00 75 00 62 00 6e 00 69 00 6b 00 61 00 40 00 63 00 6f 00 63 00 6b 00 2e 00 6c 00 69 00 5d 00 20 00 2e 00 57 00 41 00 4e 00 4e 00 41 00 43 00 41 00 53 00 48 00 20 00 4e 00 43 00 4f 00 56 00 } //01 00  clubnika@cock.li] .WANNACASH NCOV
		$a_01_1 = {6f 00 6d 00 67 00 75 00 6e 00 69 00 3a 00 5b 00 } //01 00  omguni:[
		$a_01_2 = {52 00 53 00 41 00 31 00 30 00 32 00 34 00 3a 00 } //01 00  RSA1024:
		$a_01_3 = {6f 00 6d 00 67 00 64 00 61 00 74 00 65 00 3a 00 5b 00 } //01 00  omgdate:[
		$a_01_4 = {6f 00 6d 00 67 00 66 00 3a 00 5b 00 } //01 00  omgf:[
		$a_01_5 = {6f 00 6d 00 67 00 70 00 3a 00 5b 00 } //00 00  omgp:[
	condition:
		any of ($a_*)
 
}