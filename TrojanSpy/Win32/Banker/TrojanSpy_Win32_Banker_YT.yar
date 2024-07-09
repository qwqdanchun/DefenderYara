
rule TrojanSpy_Win32_Banker_YT{
	meta:
		description = "TrojanSpy:Win32/Banker.YT,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {0f b7 54 7a fe 8b 4d fc 0f b7 4c 71 fe 66 33 d1 e8 } //6
		$a_03_1 = {eb ea 6a 03 6a 00 6a 00 8d 55 e0 a1 ?? ?? ?? ?? 8b 00 e8 ?? ?? ?? ?? 8b 45 e0 e8 ?? ?? ?? ?? 50 6a 00 8b 45 fc e8 ?? ?? ?? ?? 50 e8 } //1
		$a_01_2 = {43 00 66 00 4f 00 49 00 53 00 41 00 42 00 4f 00 67 00 41 00 } //1 CfOISABOgA
		$a_01_3 = {59 00 20 00 46 00 4d 00 73 00 74 00 7e 00 73 00 46 00 } //1 Y FMst~sF
		$a_01_4 = {58 00 7b 00 74 00 79 00 75 00 3a 00 49 00 7b 00 74 00 6e 00 7b 00 74 00 7e 00 } //1 X{tyu:I{tn{t~
		$a_01_5 = {75 00 68 00 71 00 6f 00 6e 00 3a 00 37 00 3a 00 76 00 75 00 7d 00 73 00 74 00 } //1 uhqon:7:vu}st
		$a_01_6 = {4d 00 73 00 74 00 7e 00 75 00 6d 00 69 00 3a 00 56 00 73 00 } //1 Mst~umi:Vs
		$a_01_7 = {77 00 69 00 74 00 77 00 69 00 7d 00 68 00 } //1 witwi}h
		$a_01_8 = {6e 00 3a 00 5f 00 62 00 6a 00 76 00 75 00 68 00 } //1 n:_bjvuh
		$a_01_9 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 7c 00 20 00 4d 00 6f 00 64 00 6f 00 20 00 50 00 72 00 6f 00 74 00 65 00 67 00 69 00 64 00 6f 00 3a 00 20 00 41 00 74 00 69 00 76 00 61 00 64 00 6f 00 } //1 Internet | Modo Protegido: Ativado
		$a_03_10 = {57 69 6e 64 6f 77 73 4c 69 76 65 3a 6e 61 6d 65 3d 2a ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 69 6e 66 6f ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 70 63 } //1
	condition:
		((#a_01_0  & 1)*6+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1) >=7
 
}