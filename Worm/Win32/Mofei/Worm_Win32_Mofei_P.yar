
rule Worm_Win32_Mofei_P{
	meta:
		description = "Worm:Win32/Mofei.P,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0e 00 08 00 00 "
		
	strings :
		$a_03_0 = {80 f1 55 88 4c 05 90 01 01 40 83 f8 18 72 ed 8d 45 90 01 01 88 5d 90 00 } //5
		$a_01_1 = {8b 06 83 c4 0c 48 74 09 8a 4c 38 ff 30 0c 38 eb f4 80 37 } //5
		$a_01_2 = {46 52 57 4b 5f 45 56 45 4e 54 5f 53 46 43 54 4c 43 4f 4d 5f 45 58 49 54 00 } //1
		$a_01_3 = {36 39 35 33 45 41 36 30 2d 38 44 35 46 2d 34 35 32 39 2d 38 37 31 30 2d 34 32 46 38 45 44 33 45 38 43 44 41 00 } //1
		$a_01_4 = {5c 61 76 70 2e 65 78 65 00 } //1
		$a_01_5 = {76 63 6b 62 70 61 2e 64 61 74 00 } //1
		$a_01_6 = {77 6d 63 73 65 72 76 2e 65 78 65 00 } //1
		$a_01_7 = {24 73 5c 73 79 73 74 65 6d 33 32 5c 26 73 41 00 } //1 猤獜獹整㍭尲猦A
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=14
 
}