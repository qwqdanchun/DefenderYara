
rule Trojan_Win64_Sliver_D{
	meta:
		description = "Trojan:Win64/Sliver.D,SIGNATURE_TYPE_PEHSTR_EXT,7c 00 7c 00 07 00 00 "
		
	strings :
		$a_03_0 = {48 83 ec 38 48 89 6c 24 30 48 8d 6c 24 30 48 8d 05 90 01 05 e8 90 01 04 48 89 44 24 18 c6 00 90 01 01 48 8d 05 90 01 04 e8 90 01 04 48 89 44 24 28 48 c7 00 00 00 00 00 48 8d 05 90 01 04 e8 90 01 04 48 89 44 24 20 48 8d 05 90 01 04 0f 1f 00 e8 90 01 04 48 8d 0d 90 01 04 48 89 08 83 90 01 04 00 00 75 20 48 8b 4c 24 28 48 89 48 08 48 8b 5c 24 18 48 89 58 10 48 8b 5c 24 20 48 89 58 18 48 89 03 eb 35 90 00 } //100
		$a_01_1 = {48 0f ba e0 3f 73 1a 48 89 c1 48 d1 e0 48 c1 e8 1f 48 ba 80 7f b1 d7 0d 00 00 00 } //10
		$a_01_2 = {44 0f b6 04 0f 49 89 c9 48 31 c1 41 01 c8 46 88 04 0f 49 8d 49 01 } //10
		$a_01_3 = {66 81 39 77 67 } //1
		$a_01_4 = {80 79 02 73 } //1
		$a_01_5 = {81 39 68 74 74 70 } //1
		$a_01_6 = {80 79 04 73 } //1
	condition:
		((#a_03_0  & 1)*100+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=124
 
}