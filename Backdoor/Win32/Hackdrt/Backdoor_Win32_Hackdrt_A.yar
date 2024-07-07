
rule Backdoor_Win32_Hackdrt_A{
	meta:
		description = "Backdoor:Win32/Hackdrt.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 06 00 09 00 00 "
		
	strings :
		$a_00_0 = {4d 00 53 00 2d 00 44 00 52 00 54 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 00 00 } //1
		$a_00_1 = {4d 00 53 00 2d 00 44 00 52 00 54 00 20 00 32 00 2e 00 32 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 54 00 72 00 6f 00 6a 00 61 00 6e 00 00 00 } //1
		$a_00_2 = {55 00 20 00 64 00 69 00 73 00 6b 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 52 00 4f 00 4f 00 74 00 00 00 } //1
		$a_01_3 = {75 70 64 61 74 65 5c 48 6c 4d 61 69 6e 2e 64 6c 6c 00 } //1
		$a_01_4 = {49 44 4f 72 50 41 53 53 09 57 72 6f 6e 67 00 } //1
		$a_00_5 = {4f 00 70 00 65 00 6e 00 33 00 33 00 38 00 39 00 00 00 } //1
		$a_00_6 = {44 00 65 00 73 00 74 00 72 00 75 00 63 00 74 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 68 00 61 00 72 00 64 00 20 00 64 00 69 00 73 00 6b 00 28 00 26 00 44 00 29 00 00 00 } //1
		$a_00_7 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 28 00 26 00 44 00 29 00 00 00 } //1
		$a_00_8 = {56 00 6f 00 69 00 63 00 65 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 28 00 26 00 57 00 29 00 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=6
 
}