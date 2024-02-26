
rule Trojan_Win32_Makoob_SPGJ_MTB{
	meta:
		description = "Trojan:Win32/Makoob.SPGJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 6d 00 72 00 72 00 65 00 62 00 72 00 64 00 73 00 62 00 75 00 74 00 69 00 6b 00 6b 00 65 00 72 00 6e 00 65 00 73 00 2e 00 62 00 72 00 65 00 } //01 00  smrrebrdsbutikkernes.bre
		$a_01_1 = {70 00 72 00 6f 00 66 00 69 00 74 00 74 00 69 00 6c 00 65 00 67 00 6e 00 65 00 6c 00 73 00 65 00 } //01 00  profittilegnelse
		$a_01_2 = {73 00 6b 00 72 00 69 00 64 00 72 00 69 00 6c 00 6c 00 65 00 6e 00 } //01 00  skridrillen
		$a_01_3 = {52 00 64 00 64 00 65 00 6c 00 69 00 67 00 73 00 74 00 2e 00 73 00 61 00 6e 00 } //01 00  Rddeligst.san
		$a_01_4 = {5a 00 79 00 67 00 6f 00 62 00 72 00 61 00 6e 00 63 00 68 00 69 00 61 00 74 00 61 00 39 00 35 00 } //01 00  Zygobranchiata95
		$a_01_5 = {42 00 65 00 72 00 6e 00 6f 00 75 00 6c 00 6c 00 69 00 2e 00 63 00 72 00 75 00 } //00 00  Bernoulli.cru
	condition:
		any of ($a_*)
 
}