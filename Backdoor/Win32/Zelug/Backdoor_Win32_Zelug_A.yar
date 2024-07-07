
rule Backdoor_Win32_Zelug_A{
	meta:
		description = "Backdoor:Win32/Zelug.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {83 c4 14 3c 42 75 11 8d 4c 24 11 51 e8 90 01 04 83 c4 04 89 44 24 30 8b 16 6a 03 8b ce ff 12 90 00 } //1
		$a_01_1 = {50 33 c0 8a 87 99 01 00 00 33 c9 8a 8f 98 01 00 00 33 d2 8a 97 97 01 00 00 50 51 33 c0 8a 87 96 01 00 00 52 } //1
		$a_01_2 = {8a 06 83 c4 14 3c 42 75 } //1
		$a_01_3 = {7a 68 75 67 65 6c 69 61 6e 6e 75 } //2 zhugeliannu
		$a_01_4 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 34 58 00 } //1
		$a_01_5 = {63 6d 64 63 6f 6d 6d 61 6e 64 3a 25 73 00 } //1 浣捤浯慭摮┺s
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}