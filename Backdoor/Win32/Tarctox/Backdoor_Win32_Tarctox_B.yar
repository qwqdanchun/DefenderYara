
rule Backdoor_Win32_Tarctox_B{
	meta:
		description = "Backdoor:Win32/Tarctox.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 45 0c 2b 45 08 c1 e8 02 89 45 fc 33 c0 8b 4d fc 51 8b d1 4a c1 e2 02 03 55 08 81 32 90 01 02 00 00 59 49 0b c9 75 02 eb 02 eb e6 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Backdoor_Win32_Tarctox_B_2{
	meta:
		description = "Backdoor:Win32/Tarctox.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 "
		
	strings :
		$a_01_0 = {83 c4 08 85 c0 7f 07 b8 02 00 00 00 eb 4d 57 8d 44 24 1c 50 ff 15 } //1
		$a_01_1 = {8d 4c 24 24 51 56 ff d3 3b c6 75 90 8d 54 24 24 52 ff d5 03 f0 80 3e 22 75 36 83 c6 01 80 3e 22 74 0c 8d 64 24 00 83 c6 01 80 3e 22 } //1
		$a_01_2 = {74 1b 85 c0 74 17 8d 4c 24 0c 51 8d 54 24 0c 52 50 e8 } //1
		$a_01_3 = {75 09 68 88 13 00 00 ff d3 eb de 8d 4d d0 51 56 e8 } //1
		$a_01_4 = {70 72 6f 66 69 6c 65 73 2e 69 6e 69 00 00 00 00 41 50 50 44 41 54 41 00 5c 70 72 65 66 73 2e 6a 73 00 } //1
		$a_01_5 = {6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 74 79 70 65 00 00 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 00 } //1
		$a_01_6 = {6f 00 63 00 78 00 73 00 74 00 61 00 74 00 65 00 2e 00 64 00 61 00 74 00 00 00 } //1
		$a_01_7 = {53 00 59 00 53 00 5f 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 } //1 SYS_%08X%08X%08X%08X%08X
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=5
 
}