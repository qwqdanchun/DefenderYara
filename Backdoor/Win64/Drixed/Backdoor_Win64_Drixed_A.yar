
rule Backdoor_Win64_Drixed_A{
	meta:
		description = "Backdoor:Win64/Drixed.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0a 00 00 "
		
	strings :
		$a_03_0 = {8a 01 40 32 c7 75 03 90 02 14 40 38 3c 10 74 90 01 01 48 8d 1c 10 8a 90 01 01 40 32 90 00 } //3
		$a_01_1 = {48 8b 4b 58 8a 83 9c 00 00 00 30 04 39 48 ff c7 48 3b 7b 60 72 ea } //2
		$a_03_2 = {83 ee 05 b2 90 90 89 75 38 e8 90 01 04 45 8d 44 24 fc 48 8d 55 38 48 8d 4d c1 c6 45 c0 e9 90 00 } //2
		$a_01_3 = {48 63 79 3c 48 03 f9 81 3f 50 45 00 00 75 df 8b 57 50 48 8b 4f 30 bb 04 00 00 00 44 8b cb 41 b8 00 30 00 00 } //1
		$a_01_4 = {62 6f 74 5f 78 33 32 00 } //1 潢彴㍸2
		$a_01_5 = {62 6f 74 5f 78 36 34 00 } //1 潢彴㙸4
		$a_01_6 = {66 6f 72 6d 67 72 61 62 62 65 72 00 } //1 潦浲牧扡敢r
		$a_01_7 = {63 6c 69 63 6b 73 68 6f 74 73 00 } //1
		$a_01_8 = {68 74 74 70 69 6e 6a 65 63 74 73 00 } //1 瑨灴湩敪瑣s
		$a_01_9 = {68 74 74 70 73 68 6f 74 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=5
 
}