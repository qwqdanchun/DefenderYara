
rule Trojan_BAT_LokiBot_RPD_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.RPD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_03_0 = {00 08 09 16 20 00 10 00 00 6f 90 01 01 00 00 0a 13 05 11 05 16 fe 02 13 06 11 06 2c 0e 00 11 04 09 16 11 05 6f 90 01 01 00 00 0a 00 00 00 11 05 16 fe 02 13 07 11 07 2d cb 90 00 } //1
		$a_01_1 = {4d 61 78 47 65 6e 65 72 61 74 69 6f 6e } //1 MaxGeneration
		$a_01_2 = {43 6f 6d 70 69 6c 61 74 69 6f 6e 52 65 6c 61 78 61 74 69 6f 6e 73 } //1 CompilationRelaxations
		$a_01_3 = {43 61 74 65 67 6f 72 79 4d 65 6d 62 65 72 73 68 69 70 } //1 CategoryMembership
		$a_01_4 = {44 65 66 65 72 72 65 64 44 69 73 70 6f 73 61 62 6c 65 } //1 DeferredDisposable
		$a_01_5 = {53 63 68 65 64 75 6c 65 64 43 6f 6e 63 75 72 72 65 6e 74 } //1 ScheduledConcurrent
		$a_01_6 = {42 00 38 00 44 00 32 00 35 00 54 00 } //1 B8D25T
		$a_01_7 = {34 00 35 00 37 00 36 00 36 00 35 00 36 00 45 00 37 00 34 00 35 00 32 00 36 00 35 00 36 00 37 00 36 00 39 00 37 00 33 00 37 00 34 00 37 00 32 00 36 00 31 00 37 00 34 00 36 00 39 00 36 00 46 00 36 00 45 00 35 00 34 00 36 00 46 00 36 00 42 00 36 00 35 00 36 00 45 00 34 00 43 00 } //1 4576656E74526567697374726174696F6E546F6B656E4C
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}