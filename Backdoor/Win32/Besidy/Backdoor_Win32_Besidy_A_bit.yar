
rule Backdoor_Win32_Besidy_A_bit{
	meta:
		description = "Backdoor:Win32/Besidy.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0c 00 00 "
		
	strings :
		$a_01_0 = {00 00 32 00 33 00 34 00 33 00 33 00 34 00 35 00 33 00 34 00 34 00 33 00 35 00 33 00 35 00 34 00 2e 00 64 00 64 00 6e 00 73 00 2e 00 6e 00 65 00 74 00 } //3
		$a_03_1 = {5c 00 6c 00 6f 00 67 00 67 00 65 00 64 00 2e 00 74 00 78 00 74 00 [0-20] 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 74 00 78 00 74 00 } //2
		$a_01_2 = {00 00 77 00 65 00 62 00 63 00 61 00 6d 00 2e 00 6a 00 70 00 67 00 } //2
		$a_03_3 = {4c 00 6f 00 63 00 61 00 6c 00 5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 6c 00 6f 00 67 00 69 00 6e 00 20 00 64 00 61 00 74 00 61 00 [0-20] 5c 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 2e 00 74 00 78 00 74 00 } //2
		$a_01_4 = {00 00 52 00 75 00 6e 00 43 00 4d 00 44 00 5f 00 00 00 } //1
		$a_01_5 = {00 00 44 00 77 00 6e 00 46 00 69 00 6c 00 65 00 00 00 } //1
		$a_01_6 = {00 00 52 00 75 00 6e 00 46 00 69 00 6c 00 65 00 00 00 } //1
		$a_01_7 = {00 00 57 00 68 00 61 00 74 00 53 00 73 00 69 00 00 00 } //1
		$a_01_8 = {00 00 53 00 63 00 72 00 65 00 65 00 6e 00 53 00 00 00 } //1
		$a_01_9 = {00 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 00 00 } //1
		$a_01_10 = {00 00 53 00 65 00 6e 00 64 00 50 00 61 00 73 00 00 00 } //1
		$a_01_11 = {00 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=5
 
}