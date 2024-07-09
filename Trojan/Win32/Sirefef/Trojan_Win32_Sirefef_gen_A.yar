
rule Trojan_Win32_Sirefef_gen_A{
	meta:
		description = "Trojan:Win32/Sirefef.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_00_0 = {00 64 3a 5c 76 63 35 5c 72 65 6c 65 61 73 65 5c 6b 69 6e 6a 65 63 74 2e } //10
		$a_00_1 = {75 73 65 72 3a 20 31 } //10 user: 1
		$a_02_2 = {47 45 54 20 2f 63 6c 69 63 6b 20 48 54 54 50 2f 31 2e 31 [0-05] 75 72 6c 3a 20 25 2e 2a 73 [0-05] 52 65 66 65 72 65 72 3a 20 25 2e 2a 73 } //1
		$a_02_3 = {4c 6f 63 61 74 69 6f 6e 3a 20 68 74 74 70 3a 2f 2f 25 2e 2a 73 [0-05] 73 65 61 72 63 68 2e 79 61 68 6f 6f 2e 63 6f 6d [0-05] 77 77 77 2e 67 6f 6f 67 6c 65 [0-05] 73 65 61 72 63 68 2e 6c 69 76 65 2e 63 6f 6d [0-05] 79 61 6e 64 65 78 2e 72 75 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=21
 
}
rule Trojan_Win32_Sirefef_gen_A_2{
	meta:
		description = "Trojan:Win32/Sirefef.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_00_0 = {00 64 3a 5c 76 63 35 5c 72 65 6c 65 61 73 65 5c 6b 69 6e 6a 65 63 74 2e } //10
		$a_00_1 = {75 73 65 72 3a 20 31 } //10 user: 1
		$a_02_2 = {47 45 54 20 2f 63 6c 69 63 6b 20 48 54 54 50 2f 31 2e 31 [0-05] 75 72 6c 3a 20 25 2e 2a 73 [0-05] 52 65 66 65 72 65 72 3a 20 25 2e 2a 73 } //1
		$a_02_3 = {4c 6f 63 61 74 69 6f 6e 3a 20 68 74 74 70 3a 2f 2f 25 2e 2a 73 [0-05] 73 65 61 72 63 68 2e 79 61 68 6f 6f 2e 63 6f 6d [0-05] 77 77 77 2e 67 6f 6f 67 6c 65 [0-05] 73 65 61 72 63 68 2e 6c 69 76 65 2e 63 6f 6d [0-05] 79 61 6e 64 65 78 2e 72 75 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=21
 
}