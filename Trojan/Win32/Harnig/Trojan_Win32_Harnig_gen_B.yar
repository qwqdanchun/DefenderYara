
rule Trojan_Win32_Harnig_gen_B{
	meta:
		description = "Trojan:Win32/Harnig.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 09 00 0c 00 00 "
		
	strings :
		$a_00_0 = {2e 70 68 70 00 3d 61 64 76 } //2
		$a_00_1 = {3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 } //2
		$a_00_2 = {43 4f 4d 53 50 45 43 00 6e 65 77 6c 31 } //2
		$a_00_3 = {68 74 74 70 3a 2f 2f 25 73 2f 70 72 6f 67 73 2f 25 73 2f } //2 http://%s/progs/%s/
		$a_00_4 = {2e 65 78 65 00 25 64 00 00 43 3a 5c } //2 攮數─d䌀尺
		$a_02_5 = {2e 65 78 65 00 00 00 5c 90 01 08 2e 65 78 65 00 00 00 5c 90 00 } //3
		$a_00_6 = {77 69 6e 69 6e 65 74 2e 64 6c 6c 00 4f 70 65 6e } //1
		$a_00_7 = {68 70 00 61 64 76 } //1 灨愀癤
		$a_00_8 = {26 63 6f 64 65 32 3d 00 } //1 挦摯㉥=
		$a_00_9 = {26 63 6f 64 65 31 3d 00 } //1 挦摯ㅥ=
		$a_00_10 = {2e 70 68 70 3f 61 64 76 3d } //1 .php?adv=
		$a_01_11 = {47 65 74 53 79 73 74 65 6d 44 65 66 61 75 6c 74 4c 61 6e 67 49 44 } //1 GetSystemDefaultLangID
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_02_5  & 1)*3+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_01_11  & 1)*1) >=9
 
}