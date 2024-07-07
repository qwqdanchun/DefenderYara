
rule TrojanDownloader_Win32_Recslurp_F{
	meta:
		description = "TrojanDownloader:Win32/Recslurp.F,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 12 00 00 "
		
	strings :
		$a_80_0 = {34 36 2e 31 34 38 2e 32 32 2e 31 30 } //46.148.22.10  1
		$a_80_1 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 53 68 61 72 65 64 20 50 6f 6c 69 63 65 } //\Microsoft\Shared Police  1
		$a_80_2 = {4d 61 63 68 69 6e 65 50 61 72 61 6d } //MachineParam  1
		$a_80_3 = {73 6d 74 70 2e 67 6d 61 69 6c 2e 63 6f 6d } //smtp.gmail.com  1
		$a_80_4 = {70 6c 75 73 2e 73 6d 74 70 2e 6d 61 69 6c 2e 79 61 68 6f 6f 2e 63 6f 6d } //plus.smtp.mail.yahoo.com  1
		$a_80_5 = {53 3a 28 4d 4c 3b 3b 4e 52 4e 57 4e 58 3b 3b 3b 4c 57 29 } //S:(ML;;NRNWNX;;;LW)  1
		$a_01_6 = {9f 25 00 00 66 } //1
		$a_01_7 = {9e 25 00 00 66 } //1
		$a_01_8 = {8a 54 31 ff 30 14 31 49 75 f6 33 c9 85 c0 76 09 80 04 31 } //1
		$a_01_9 = {b8 22 15 3c 74 } //1
		$a_01_10 = {b8 14 93 93 84 } //1
		$a_01_11 = {33 c0 ac 3c 61 7c 02 2c 20 c1 cf 0d 03 f8 e2 f0 81 ff } //1
		$a_03_12 = {05 a8 74 20 90 01 02 ac 75 0b 90 01 02 05 90 01 01 0f 90 00 } //2
		$a_03_13 = {0f b6 45 eb 33 ff 48 0f 84 90 01 02 00 00 48 48 74 90 01 01 48 0f 85 90 00 } //2
		$a_01_14 = {c6 45 f7 5a } //1
		$a_01_15 = {80 7d f7 5a } //1
		$a_01_16 = {c6 45 f7 5b } //1
		$a_01_17 = {8b 07 81 c6 30 75 00 00 85 c0 74 3c 6b c0 18 } //2
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_03_12  & 1)*2+(#a_03_13  & 1)*2+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*2) >=10
 
}