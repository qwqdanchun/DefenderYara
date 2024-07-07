
rule Worm_Win32_Mirkspot_A{
	meta:
		description = "Worm:Win32/Mirkspot.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 72 00 65 00 67 00 61 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 00 00 } //1
		$a_01_1 = {72 00 69 00 6d 00 6d 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_2 = {73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 6e 00 74 00 73 00 79 00 73 00 6e 00 74 00 66 00 73 00 2e 00 73 00 79 00 73 00 00 00 } //1
		$a_01_3 = {73 00 79 00 73 00 74 00 65 00 6d 00 73 00 66 00 2e 00 73 00 79 00 73 00 00 00 } //1
		$a_01_4 = {64 00 65 00 73 00 63 00 74 00 6f 00 70 00 2e 00 74 00 78 00 74 00 00 00 } //1
		$a_01_5 = {72 00 69 00 6d 00 6d 00 61 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_6 = {4d 00 75 00 73 00 69 00 63 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_7 = {49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 6b 00 69 00 6e 00 6f 00 20 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_8 = {61 75 67 75 73 74 6f 2e 74 75 72 69 73 74 6f 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=6
 
}