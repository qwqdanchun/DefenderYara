
rule Trojan_Win32_Alureon_gen_T{
	meta:
		description = "Trojan:Win32/Alureon.gen!T,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {24 04 76 0f 8a d1 80 c2 ?? 30 14 01 41 3b 4c 24 04 72 f1 } //3
		$a_01_1 = {83 c0 28 6a 05 33 db 59 8b f0 8b fa f3 a6 75 f0 } //2
		$a_00_2 = {43 00 41 00 45 00 45 00 42 00 30 00 32 00 36 00 2d 00 36 00 39 00 36 00 34 00 2d 00 34 00 33 00 32 00 37 00 2d 00 38 00 37 00 43 00 44 00 2d 00 36 00 38 00 31 00 46 00 41 00 32 00 35 00 30 00 32 00 36 00 46 00 37 00 } //2 CAEEB026-6964-4327-87CD-681FA25026F7
		$a_00_3 = {5c 00 5c 00 3f 00 5c 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 72 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 72 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 55 00 41 00 43 00 64 00 2e 00 73 00 79 00 73 00 } //1 \\?\globalroot\systemroot\system32\drivers\UACd.sys
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1) >=5
 
}