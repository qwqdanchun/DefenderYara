
rule Worm_Win32_Xtrat_F{
	meta:
		description = "Worm:Win32/Xtrat.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {25 55 73 65 72 43 6f 6e 6e 65 63 74 69 6f 6e 00 } //1 唥敳䍲湯敮瑣潩n
		$a_01_1 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 69 00 6e 00 67 00 22 00 20 00 2f 00 76 00 20 00 44 00 6f 00 6e 00 74 00 53 00 68 00 6f 00 77 00 55 00 49 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 20 00 2f 00 66 00 00 00 } //1
		$a_01_2 = {53 00 70 00 65 00 63 00 69 00 61 00 6c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 00 00 } //1
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 53 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 00 00 } //1
		$a_01_4 = {54 00 6d 00 70 00 53 00 6f 00 6c 00 75 00 74 00 69 00 6f 00 6e 00 32 00 00 00 } //1
		$a_01_5 = {5c 00 54 00 6d 00 70 00 53 00 6f 00 6c 00 75 00 74 00 69 00 6f 00 6e 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}