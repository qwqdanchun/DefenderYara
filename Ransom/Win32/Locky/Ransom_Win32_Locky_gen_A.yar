
rule Ransom_Win32_Locky_gen_A{
	meta:
		description = "Ransom:Win32/Locky.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_03_0 = {69 c0 e1 24 19 b1 c1 90 01 01 07 90 00 } //10
		$a_00_1 = {26 6f 73 3d 00 00 00 00 26 73 65 72 76 3d 00 00 26 63 6f 72 70 3d 00 00 26 6c 61 6e 67 3d 00 00 } //1
		$a_00_2 = {26 61 63 74 3d 67 65 74 6b 65 79 26 61 66 66 69 64 3d 00 } //1
		$a_02_3 = {72 75 00 00 90 02 03 69 6e 66 6f 00 90 02 03 62 69 7a 00 90 00 } //1
		$a_00_4 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 00 00 } //1
		$a_00_5 = {2e 00 44 00 4f 00 43 00 00 00 00 00 2e 00 70 00 65 00 6d 00 00 00 00 00 2e 00 70 00 31 00 32 00 00 00 00 00 2e 00 63 00 73 00 72 00 00 00 00 00 2e 00 63 00 72 00 74 00 00 00 00 00 2e 00 6b 00 65 00 79 00 00 00 00 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 64 00 61 00 74 00 00 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=12
 
}