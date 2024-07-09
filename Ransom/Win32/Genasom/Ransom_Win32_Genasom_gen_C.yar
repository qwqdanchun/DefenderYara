
rule Ransom_Win32_Genasom_gen_C{
	meta:
		description = "Ransom:Win32/Genasom.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {00 43 61 70 74 69 6f 6e 00 [0-20] 30 48 30 20 3e 3f 35 40 30 46 38 3e 3d 3d 30 4f 20 41 38 41 42 35 3c 30 20 37 30 31 3b 3e 3a 38 40 3e 32 30 3d 30 20 37 30 20 3d 30 40 43 48 35 3d 38 35 20 38 41 3f 3e 3b 4c 37 3e 32 30 3d 38 4f 20 41 35 42 38 20 38 3d 42 35 40 3d 35 42 2e } //1
		$a_01_1 = {d1 8f 20 62 69 6f 73 2c 20 57 69 6e 64 6f 77 73 } //1
		$a_01_2 = {38 2d 39 36 37 2d 32 38 34 2d 37 34 2d 34 37 06 0f 38 2d 39 36 33 2d 36 36 36 2d 39 39 2d 32 38 06 0f } //1 ⴸ㘹ⴷ㠲ⴴ㐷㐭ط㠏㤭㌶㘭㘶㤭ⴹ㠲༆
		$a_01_3 = {53 79 73 74 65 6d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c 66 75 63 6b 00 } //1
		$a_01_4 = {53 79 73 74 65 6d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c 79 6f 75 00 } //1
		$a_02_5 = {6a 01 6a 00 6a 00 68 ?? ?? ?? 00 68 ?? ?? ?? 00 a1 ?? ?? ?? ?? 8b 00 8b 40 30 50 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_02_5  & 1)*1) >=3
 
}