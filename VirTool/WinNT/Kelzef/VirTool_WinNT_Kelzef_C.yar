
rule VirTool_WinNT_Kelzef_C{
	meta:
		description = "VirTool:WinNT/Kelzef.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_11_0 = {65 74 00 73 74 61 72 74 20 6e 65 77 64 72 69 76 65 72 00 01 } //2 瑥猀慴瑲渠睥牤癩牥Ā
		$a_53_1 = {46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 } //6656 FTWARE\Microsoft
		$a_44_2 = {72 70 00 01 00 0d 11 5c 67 69 67 61 6c 61 6e 2e 74 78 74 00 01 00 13 11 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 37 00 01 00 10 11 5f 65 77 64 72 69 76 65 72 00 2d 6c 69 6e 6b 00 00 00 03 00 5d } //17500
		$a_21_4 = {00 b6 fc 02 80 00 00 01 00 05 00 0b 00 a4 21 56 6f 62 66 75 73 2e 4f 46 00 00 01 40 05 82 64 00 04 00 80 10 00 00 2b af 60 56 ef 8b 60 54 3d f2 43 1c c0 ff 00 80 5d 04 00 00 b6 fc 02 80 5c 25 00 00 b7 fc 02 80 00 00 01 00 08 00 0f 00 ad 41 52 65 64 69 72 65 63 74 6f 72 2e 4c } //32770
	condition:
		((#a_11_0  & 1)*2+(#a_53_1  & 1)*6656+(#a_44_2  & 1)*17500+(#a_21_4  & 1)*32770) >=5
 
}