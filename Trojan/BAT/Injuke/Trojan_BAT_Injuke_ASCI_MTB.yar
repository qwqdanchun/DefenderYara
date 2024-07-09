
rule Trojan_BAT_Injuke_ASCI_MTB{
	meta:
		description = "Trojan:BAT/Injuke.ASCI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_03_0 = {13 06 07 08 11 06 28 ?? 00 00 0a 09 06 6f ?? 00 00 0a 61 d2 9c 08 17 58 0c 06 17 58 0a 06 09 6f ?? 00 00 0a 33 02 16 0a 11 05 6f ?? 00 00 0a 2d c8 } //4
		$a_01_1 = {32 00 34 00 31 00 33 00 38 00 30 00 33 00 33 00 32 00 31 00 37 00 31 00 38 00 37 00 30 00 32 00 34 00 31 00 36 00 37 00 32 00 30 00 31 00 32 00 35 00 30 00 31 00 34 00 38 00 31 00 38 00 31 00 30 00 34 00 38 00 31 00 30 00 33 00 31 00 33 00 38 00 31 00 35 00 34 00 32 00 35 00 34 00 32 00 30 00 35 00 32 00 31 00 32 00 32 00 35 00 32 00 30 00 36 00 31 00 32 } //1
		$a_01_2 = {31 00 35 00 34 00 30 00 30 00 33 00 31 00 31 00 38 00 30 00 34 00 38 00 32 00 30 00 33 00 32 00 32 00 36 00 32 00 31 00 38 00 30 00 36 00 38 00 30 00 33 00 38 00 31 } //1
		$a_01_3 = {35 00 31 00 32 00 32 00 34 00 31 00 31 00 34 00 31 00 30 00 33 00 31 00 30 00 30 00 30 00 36 00 37 00 31 00 32 00 31 00 30 00 37 00 38 00 32 00 30 00 31 00 32 00 32 00 37 00 30 00 } //1 512241141031000671210782012270
		$a_01_4 = {31 00 38 00 38 00 30 00 37 00 38 00 32 00 31 00 38 00 31 00 32 00 36 00 31 00 34 00 38 00 30 00 36 00 32 00 30 00 32 00 33 00 32 00 34 00 39 00 31 00 31 00 38 00 30 00 33 00 } //1 18807821812614806202324911803
		$a_01_5 = {32 00 31 00 37 00 31 00 34 00 30 00 30 00 37 00 35 00 30 00 37 00 33 00 31 00 30 00 32 00 31 00 30 00 38 00 31 00 39 00 32 00 30 00 35 00 36 00 32 00 30 00 36 00 32 00 32 00 37 00 31 00 34 00 } //1 21714007507310210819205620622714
		$a_01_6 = {39 00 36 00 32 00 34 00 31 00 31 00 38 00 35 00 31 00 38 00 30 00 30 00 30 00 31 00 30 00 34 00 32 00 30 00 37 00 31 00 31 00 33 00 33 00 31 00 36 00 32 00 31 00 36 00 34 00 31 00 33 00 39 00 } //1 96241185180001042071133162164139
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}