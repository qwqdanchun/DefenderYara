
rule Ransom_Win32_LockScreen_CZ{
	meta:
		description = "Ransom:Win32/LockScreen.CZ,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_01_0 = {c4 e8 f1 ef e5 f2 f7 e5 f0 20 e7 e0 e4 e0 f7 20 57 69 6e 64 6f 77 73 00 } //5
		$a_01_1 = {01 3d 57 69 6e 6c 6f 63 6b 00 } //1 㴁楗汮捯k
		$a_01_2 = {2f 6c 6f 63 6b 2e 6e 6f 6e 65 00 } //1
		$a_01_3 = {00 4c 6f 63 6b 41 70 70 00 } //1
		$a_01_4 = {63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 70 6f 6c 69 63 69 65 73 65 78 70 6c 6f 72 65 72 00 } //1
		$a_03_5 = {6e 6f 63 6c 6f 73 65 00 ?? ?? ?? ?? ?? ?? ?? ?? 6e 6f 6c 6f 67 6f 66 66 00 } //1
		$a_03_6 = {5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c 4d 00 ?? ?? ?? ?? 31 00 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=10
 
}