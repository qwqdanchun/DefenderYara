
rule Ransom_Win64_Henasome_MA_MTB{
	meta:
		description = "Ransom:Win64/Henasome.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {c1 e3 08 31 d8 0f b6 5c 35 90 01 01 c1 e3 90 01 01 31 d8 33 84 8d 90 01 04 89 47 90 01 01 33 47 90 01 01 89 47 90 01 01 33 47 90 01 01 89 47 90 01 01 33 47 90 01 01 89 47 90 01 01 83 c1 90 01 01 48 8d 7f 90 01 01 83 f9 90 01 01 7c 90 00 } //5
		$a_01_1 = {2e 00 72 00 6f 00 79 00 61 00 6c 00 } //1 .royal
		$a_01_2 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 delete shadows /all /quiet
		$a_01_3 = {53 55 41 54 41 55 41 56 41 57 48 } //1 SUATAUAVAWH
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}