
rule Worm_Win32_Tophos_A{
	meta:
		description = "Worm:Win32/Tophos.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 63 00 61 00 64 00 72 00 65 00 74 00 65 00 73 00 74 00 2e 00 72 00 75 00 2f 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //1 http://www.cadretest.ru/load.php
		$a_01_1 = {3a 00 5c 00 50 00 68 00 6f 00 74 00 6f 00 2e 00 73 00 63 00 72 00 } //1 :\Photo.scr
		$a_01_2 = {55 00 6e 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 64 00 } //1 Undefended
		$a_03_3 = {0f b7 54 45 ac 52 68 ?? ?? ?? ?? 8d 8d ?? ?? ?? ?? 51 e8 ?? ?? ?? ?? 83 c4 10 8d 85 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 83 f8 01 74 3d 68 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}