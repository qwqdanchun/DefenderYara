
rule Backdoor_BAT_Calierot_A{
	meta:
		description = "Backdoor:BAT/Calierot.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0f 00 00 "
		
	strings :
		$a_01_0 = {00 77 65 62 63 61 6d 00 } //1 眀扥慣m
		$a_01_1 = {00 76 69 73 69 66 6f 72 6d 00 } //1 瘀獩晩牯m
		$a_01_2 = {00 6f 66 6b 6c 6f 63 00 } //1 漀武潬c
		$a_01_3 = {00 73 65 6e 64 6d 69 6e 69 74 68 75 6d 62 00 } //1
		$a_01_4 = {00 4f 70 65 72 61 52 65 63 6f 76 65 72 00 } //1 伀数慲敒潣敶r
		$a_01_5 = {00 46 69 72 65 77 61 6c 6c 00 41 6e 74 69 76 69 72 75 73 00 } //1 䘀物睥污l湁楴楶畲s
		$a_01_6 = {00 6c 6f 67 69 6e 69 6e 66 6f 00 } //1
		$a_01_7 = {00 53 68 6f 69 74 5a 69 6c 6c 61 00 } //1 匀潨瑩楚汬a
		$a_01_8 = {00 66 69 6e 64 61 6e 64 6b 69 6c 6c 00 } //1
		$a_01_9 = {00 73 65 6e 64 64 72 69 76 65 73 00 } //1 猀湥摤楲敶s
		$a_01_10 = {00 73 74 6f 70 6b 65 79 62 64 00 } //1
		$a_01_11 = {00 73 74 61 72 74 66 69 6c 65 64 6f 77 6e 6c 6f 61 64 00 } //1
		$a_01_12 = {00 73 69 6e 67 6d 70 72 6f 63 00 } //1
		$a_01_13 = {00 73 65 6e 64 61 6c 6c 70 61 73 73 77 6f 72 64 73 00 } //1 猀湥慤汬慰獳潷摲s
		$a_01_14 = {00 6b 69 6c 6c 6d 70 72 6f 63 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=14
 
}