
rule Trojan_AndroidOS_MalLocker_A{
	meta:
		description = "Trojan:AndroidOS/MalLocker.A,SIGNATURE_TYPE_DEXHSTR_EXT,09 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2e 6c 6f 6c 6f 6c 6f 2e 4c 6f 63 6b 53 65 72 76 69 63 65 00 } //2
		$a_00_1 = {22 4c 63 6f 6d 2f 6c 6f 6c 6f 6c 6f 2f 4c 6f 63 6b 53 65 72 76 69 63 65 24 31 30 30 30 30 30 30 30 30 3b 00 } //1 䰢潣⽭潬潬潬䰯捯卫牥楶散ㄤ〰〰〰〰;
		$a_00_2 = {29 4c 61 6e 64 72 6f 69 64 2f 76 69 65 77 2f 57 69 6e 64 6f 77 4d 61 6e 61 67 65 72 24 4c 61 79 6f 75 74 50 61 72 61 6d 73 3b 00 } //1
		$a_00_3 = {22 63 6f 6d 2e 61 69 64 65 2e 72 75 6e 74 69 6d 65 2e 56 49 45 57 5f 4c 4f 47 43 41 54 5f 45 4e 54 52 59 00 } //1
		$a_00_4 = {61 64 64 56 69 65 77 00 } //1 摡噤敩w
		$a_00_5 = {72 65 6d 6f 76 65 56 69 65 77 00 } //1
		$a_00_6 = {4c 63 6f 6d 2f 6c 6f 6c 6f 6c 6f 2f 42 6f 6f 74 52 65 63 65 69 76 65 72 3b 00 } //1 捌浯氯汯汯⽯潂瑯敒散癩牥;
		$a_00_7 = {6c 61 79 6f 75 74 5f 69 6e 66 6c 61 74 65 72 00 } //1 慬潹瑵楟普慬整r
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}