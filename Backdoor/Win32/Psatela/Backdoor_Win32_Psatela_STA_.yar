
rule Backdoor_Win32_Psatela_STA_{
	meta:
		description = "Backdoor:Win32/Psatela.STA!!Psatela.STA,SIGNATURE_TYPE_ARHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_03_0 = {06 91 06 61 20 ?? 00 00 00 61 d2 9c 06 17 58 0a 06 7e ?? ?? 00 04 8e 69 fe 04 2d } //2
		$a_01_1 = {4e 45 57 42 4d 50 f9 e4 ee fd f9 ee fe e8 fe ee c9 c2 d4 c8 d7 ca dc cf } //2
		$a_02_2 = {4b 69 6c 6c [0-10] 53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 41 63 63 65 73 73 43 6f 6e 74 72 6f 6c [0-1a] 53 65 74 41 63 63 65 73 73 43 6f 6e 74 72 6f 6c } //1
		$a_02_3 = {43 6f 70 79 46 72 6f 6d 53 63 72 65 65 6e [0-0a] 67 65 74 5f 50 72 69 6d 61 72 79 53 63 72 65 65 6e } //1
		$a_02_4 = {6c 70 53 74 61 72 74 75 70 49 6e 66 6f [0-0a] 47 65 74 4d 6f 6e 69 74 6f 72 49 6e 66 6f } //1
		$a_02_5 = {42 65 67 69 6e 52 65 63 65 69 76 65 [0-10] 2e 65 78 65 [0-0a] 64 77 58 53 69 7a 65 } //1
		$a_00_6 = {41 73 79 6e 63 43 61 6c 6c 62 61 63 6b 00 52 65 63 69 65 76 65 43 61 6c 6c 62 61 63 6b 00 54 69 6d 65 72 43 61 6c 6c 62 61 63 6b } //1
		$a_00_7 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 00 44 65 6c 65 74 65 46 69 6c 65 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}