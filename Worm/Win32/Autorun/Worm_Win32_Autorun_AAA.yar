
rule Worm_Win32_Autorun_AAA{
	meta:
		description = "Worm:Win32/Autorun.AAA,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [Autorun]
		$a_01_1 = {4c 00 61 00 62 00 65 00 6c 00 3d 00 55 00 6e 00 69 00 64 00 61 00 64 00 20 00 64 00 65 00 20 00 64 00 69 00 73 00 63 00 6f 00 } //1 Label=Unidad de disco
		$a_01_2 = {46 00 6f 00 74 00 6f 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 61 00 64 00 61 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 61 00 6d 00 65 00 6e 00 74 00 65 00 } //1 Foto Capturada correctamente
		$a_01_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 75 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 c:\windows\system32\suchost.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}