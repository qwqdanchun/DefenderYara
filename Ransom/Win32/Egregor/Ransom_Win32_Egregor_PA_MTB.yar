
rule Ransom_Win32_Egregor_PA_MTB{
	meta:
		description = "Ransom:Win32/Egregor.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 74 00 68 00 72 00 65 00 61 00 74 00 5c 00 72 00 65 00 73 00 65 00 61 00 72 00 63 00 68 00 65 00 73 00 5c 00 6e 00 6f 00 5c 00 6a 00 6f 00 6b 00 65 00 73 00 5c 00 74 00 68 00 65 00 5c 00 62 00 65 00 73 00 74 00 5c 00 77 00 72 00 69 00 74 00 65 00 72 00 2e 00 70 00 79 00 } //01 00  \threat\researches\no\jokes\the\best\writer.py
		$a_01_1 = {5b 30 39 2a 79 37 30 39 33 72 79 38 34 74 72 37 79 38 75 39 79 74 34 67 38 66 68 34 37 34 64 73 } //01 00  [09*y7093ry84tr7y8u9yt4g8fh474ds
		$a_01_2 = {30 34 39 38 79 74 68 73 } //01 00  0498yths
		$a_01_3 = {42 00 6f 00 72 00 69 00 73 00 } //01 00  Boris
		$a_01_4 = {2d 00 2d 00 6d 00 74 00 68 00 66 00 63 00 6b 00 62 00 74 00 63 00 68 00 } //00 00  --mthfckbtch
	condition:
		any of ($a_*)
 
}