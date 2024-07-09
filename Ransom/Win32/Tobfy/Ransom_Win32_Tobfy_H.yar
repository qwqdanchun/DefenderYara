
rule Ransom_Win32_Tobfy_H{
	meta:
		description = "Ransom:Win32/Tobfy.H,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 67 65 74 75 6e 6c 6f 63 6b 2e 70 68 70 00 } //1
		$a_03_1 = {8b 08 52 50 ff 51 2c [0-10] 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 e9 03 00 00 56 ff 15 ?? ?? ?? ?? 68 e8 03 00 00 56 ff 15 } //1
		$a_00_2 = {4d 67 6d 6a 7b 73 42 5d 6b 6c 6c 7b 70 6a 5d 71 70 6a 6c 71 72 4d 7b 6a 42 5d 71 70 6a 6c 71 72 42 4d a6 78 7b 5c 71 71 6a 00 } //1
		$a_03_3 = {6a 01 52 68 c8 00 00 00 68 ?? 01 00 00 6a 00 6a 00 ff 15 ?? ?? ?? ?? 99 2b c2 d1 f8 2d 85 00 00 00 50 68 00 00 00 50 68 ?? ?? ?? ?? ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}