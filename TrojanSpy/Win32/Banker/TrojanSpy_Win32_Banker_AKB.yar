
rule TrojanSpy_Win32_Banker_AKB{
	meta:
		description = "TrojanSpy:Win32/Banker.AKB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 56 00 41 00 53 00 54 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 00 00 } //1
		$a_01_1 = {64 00 61 00 74 00 61 00 63 00 61 00 64 00 61 00 73 00 74 00 72 00 6f 00 3d 00 } //1 datacadastro=
		$a_01_2 = {2e 00 63 00 70 00 6c 00 2c 00 4d 00 6f 00 75 00 73 00 65 00 } //1 .cpl,Mouse
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanSpy_Win32_Banker_AKB_2{
	meta:
		description = "TrojanSpy:Win32/Banker.AKB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 56 00 41 00 53 00 54 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 00 00 } //1
		$a_01_1 = {54 41 70 70 6c 65 74 4d 6f 64 75 6c 65 31 52 00 } //1 䅔灰敬䵴摯汵ㅥR
		$a_01_2 = {6d 00 74 00 60 00 75 00 61 00 62 00 16 } //1
		$a_01_3 = {64 00 61 00 74 00 61 00 63 00 61 00 64 00 61 00 73 00 74 00 72 00 6f 00 3d 00 } //1 datacadastro=
		$a_01_4 = {c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 42 83 ef 08 8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 } //1
		$a_01_5 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 37 00 78 00 65 00 5c 00 75 00 63 00 2e 00 63 00 70 00 6c 00 2c 00 4d 00 6f 00 75 00 73 00 65 00 } //1 C:\win7xe\uc.cpl,Mouse
		$a_01_6 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 37 00 78 00 65 00 5c 00 75 00 70 00 67 00 72 00 61 00 64 00 65 00 2e 00 65 00 78 00 65 00 } //1 C:\win7xe\upgrade.exe
		$a_01_7 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 37 00 78 00 65 00 5c 00 70 00 72 00 74 00 2e 00 6a 00 70 00 67 00 } //1 C:\win7xe\prt.jpg
		$a_03_8 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 37 00 78 00 65 00 5c 00 77 00 69 00 6e 00 90 05 03 04 00 32 33 37 00 2e 00 65 00 78 00 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1) >=3
 
}