
rule Trojan_Win32_Startpage_gen_dll{
	meta:
		description = "Trojan:Win32/Startpage.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {7b 33 32 39 41 36 32 34 41 2d 31 44 32 32 2d 34 38 61 65 2d 39 35 37 36 2d 41 30 32 46 31 45 44 42 31 33 37 32 7d } //1 {329A624A-1D22-48ae-9576-A02F1EDB1372}
		$a_01_1 = {39 33 34 38 2e 63 6e } //1 9348.cn
		$a_01_2 = {36 37 30 30 2e 63 6e } //1 6700.cn
		$a_01_3 = {33 39 32 39 2e 63 6e } //1 3929.cn
		$a_01_4 = {32 35 34 38 2e 63 6e } //1 2548.cn
		$a_01_5 = {6b 7a 78 66 2e 6e 65 74 } //1 kzxf.net
		$a_01_6 = {77 77 77 2e 39 33 34 38 2e 63 6e } //1 www.9348.cn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}
rule Trojan_Win32_Startpage_gen_dll_2{
	meta:
		description = "Trojan:Win32/Startpage.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,ffffffbc 02 58 02 07 00 00 "
		
	strings :
		$a_00_0 = {61 63 74 69 6f 6e 3d 22 68 74 74 70 3a 2f 2f 27 2b 64 6f 6d 61 69 6e 2b 27 2f 73 65 61 72 63 68 2e 70 68 70 22 20 6d 65 74 68 6f 64 3d 67 65 74 } //100 action="http://'+domain+'/search.php" method=get
		$a_00_1 = {63 6c 61 73 73 3d 72 69 67 68 74 42 75 74 74 6f 6e 3e 3c 69 6e 70 75 74 20 74 79 70 65 3d 62 75 74 74 6f 6e 20 6f 6e 63 6c 69 63 6b 3d 22 42 78 28 29 3b 72 65 74 75 72 6e 20 6e 75 6c 6c 3b 22 } //100 class=rightButton><input type=button onclick="Bx();return null;"
		$a_00_2 = {66 6f 72 6d 57 65 62 2e 77 77 2e 76 61 6c 75 65 3d 74 65 78 74 3b 20 42 78 28 29 3b } //100 formWeb.ww.value=text; Bx();
		$a_00_3 = {73 3d 65 73 63 61 70 65 28 66 6f 72 6d 57 65 62 2e 77 77 2e 76 61 6c 75 65 29 3b } //100 s=escape(formWeb.ww.value);
		$a_00_4 = {07 00 53 00 50 00 2e 00 48 00 54 00 4d 00 4c } //100
		$a_02_5 = {50 45 00 00 4c 01 02 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 e0 00 0e 21 0b 01 07 0a 00 00 00 00 00 24 00 00 00 00 00 00 00 00 00 00 00 10 00 00 } //100
		$a_00_6 = {3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 6a 61 76 61 73 63 72 69 70 74 3e 0a 20 76 61 72 20 64 6f 6d 61 69 6e 3d 27 } //100
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*100+(#a_00_3  & 1)*100+(#a_00_4  & 1)*100+(#a_02_5  & 1)*100+(#a_00_6  & 1)*100) >=600
 
}