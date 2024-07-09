
rule Trojan_Win32_Vundo_gen_I{
	meta:
		description = "Trojan:Win32/Vundo.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_03_0 = {80 78 02 11 90 09 30 00 [0-23] 80 2d ?? ?? 00 10 b8 [0-08] ff 35 ?? ?? 00 10 } //3
		$a_03_1 = {a0 00 00 00 85 90 09 02 00 8b ?? ?? ?? ?? ?? ?? 90 04 01 07 c0 db c9 d2 f6 ff ed eb } //3
		$a_03_2 = {ff 0f 00 00 90 09 02 00 81 [e1 e2 e3] [0-0c] (eb 90 14|) [0-08] 03 90 04 01 0[] } //4
		$a_01_3 = {64 a1 30 00 00 00 } //2
		$a_01_4 = {8d 45 fc eb 00 } //2
		$a_03_5 = {68 00 10 00 00 [0-04] 05 00 02 00 00 } //2
		$a_01_6 = {0f b7 50 14 eb } //2
		$a_09_7 = {6e 74 64 6c 6c 2e 64 6c 6c 00 00 00 00 } //2
		$a_03_8 = {48 85 c0 75 ?? 5a } //1
		$a_01_9 = {81 e2 ff 0f 00 00 } //1
		$a_01_10 = {8b 44 24 04 e9 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*4+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_03_5  & 1)*2+(#a_01_6  & 1)*2+(#a_09_7  & 1)*2+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=15
 
}