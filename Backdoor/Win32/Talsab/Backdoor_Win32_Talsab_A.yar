
rule Backdoor_Win32_Talsab_A{
	meta:
		description = "Backdoor:Win32/Talsab.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 0f 94 45 ff } //2
		$a_03_1 = {83 c0 eb 83 f8 05 0f 87 90 01 02 00 00 ff 24 85 90 01 02 45 00 90 00 } //2
		$a_03_2 = {8a c3 83 f8 14 0f 87 90 01 02 00 00 ff 24 85 90 01 02 45 00 90 00 } //2
		$a_03_3 = {b2 03 b0 02 e8 90 01 02 ff ff 8d 4d e0 b2 04 b0 01 e8 90 01 02 ff ff 8d 4d dc b2 02 b0 02 90 00 } //2
		$a_03_4 = {43 6f 6e 66 69 67 50 61 74 68 00 90 02 0a 44 65 76 69 63 65 50 61 74 68 00 90 02 0a 4d 65 64 69 61 50 61 74 68 00 90 02 0a 57 61 6c 6c 50 61 70 65 72 44 69 72 00 90 00 } //1
		$a_03_5 = {41 70 70 44 61 74 61 00 90 02 0a 46 6f 6e 74 73 00 90 02 0a 53 65 6e 64 54 6f 00 90 02 0a 52 65 63 65 6e 74 00 90 02 0a 46 61 76 6f 72 69 74 65 73 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=8
 
}