
rule Ransom_MSIL_Conti_STR_MTB{
	meta:
		description = "Ransom:MSIL/Conti.STR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {43 4f 4e 54 49 2d 48 69 65 6e 73 69 76 5f 47 67 79 64 6c 65 6c 61 2e 70 6e 67 } //01 00  CONTI-Hiensiv_Ggydlela.png
		$a_01_1 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_2 = {43 6f 70 79 54 6f } //01 00  CopyTo
		$a_01_3 = {57 65 62 52 65 71 75 65 73 74 } //01 00  WebRequest
		$a_01_4 = {4d 6f 76 65 4e 65 78 74 } //01 00  MoveNext
		$a_81_5 = {55 77 42 30 41 47 45 41 63 67 42 30 41 43 30 41 55 77 42 73 41 47 55 41 5a 51 42 77 41 43 41 41 4c 51 42 54 41 47 55 41 59 77 42 76 41 47 34 41 5a 41 42 7a 41 43 41 41 4d 67 41 77 41 41 3d 3d } //00 00  UwB0AGEAcgB0AC0AUwBsAGUAZQBwACAALQBTAGUAYwBvAG4AZABzACAAMgAwAA==
	condition:
		any of ($a_*)
 
}