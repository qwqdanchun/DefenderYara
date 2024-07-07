
rule DDoS_Win32_Nitol_L_{
	meta:
		description = "DDoS:Win32/Nitol.L!!Nitol.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 10 00 00 "
		
	strings :
		$a_00_0 = {5e 26 2a 2e 68 74 6d 47 45 54 20 5e 26 26 25 24 } //2 ^&*.htmGET ^&&%$
		$a_00_1 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 25 73 } //1 Referer: http://%s
		$a_00_2 = {48 6f 73 74 3a 20 25 73 3a 25 64 } //1 Host: %s:%d
		$a_00_3 = {25 63 25 63 25 63 25 63 25 63 2e 65 78 65 } //2 %c%c%c%c%c.exe
		$a_00_4 = {57 69 6e 41 64 64 72 65 73 73 31 32 33 } //1 WinAddress123
		$a_00_5 = {71 61 7a 77 73 78 65 64 63 } //1 qazwsxedc
		$a_00_6 = {00 32 30 31 35 2d 31 30 00 } //1
		$a_00_7 = {20 7c 20 43 4f 52 45 20 25 75 } //1  | CORE %u
		$a_03_8 = {25 73 20 25 73 25 73 90 02 04 47 45 54 20 25 73 20 48 54 54 50 2f 31 2e 31 90 00 } //2
		$a_03_9 = {f7 d1 8d 44 24 90 01 01 49 50 8b d9 e8 90 01 02 ff ff 8b 8c 24 90 01 02 00 00 83 c4 0c 89 44 24 90 00 } //1
		$a_03_10 = {55 ff d3 8b c7 b9 0a 00 00 00 99 f7 f9 85 d2 75 08 6a 05 ff 15 90 01 04 47 81 ff e8 03 00 00 7c cc 90 00 } //1
		$a_03_11 = {66 c7 44 24 12 00 02 c6 44 24 0c 08 ff 15 90 01 04 8b 4c 24 0c 8b 54 24 10 6a 1a 89 4c 24 50 89 54 24 54 89 44 24 58 e8 90 01 04 83 c0 61 90 00 } //2
		$a_03_12 = {4a 74 06 c6 04 3e 78 eb 90 01 01 ff d3 90 00 } //2
		$a_03_13 = {68 01 10 00 00 33 f6 68 ff ff 00 00 53 89 74 24 90 01 01 ff 15 90 01 04 8b 2d 90 01 04 6a 35 66 c7 44 24 90 01 01 02 00 ff d5 90 00 } //2
		$a_03_14 = {83 f8 7a 75 90 01 01 68 00 80 00 00 6a 00 57 ff 15 90 01 04 6a 04 68 00 30 00 00 8b 44 24 90 01 01 83 c0 02 50 90 00 } //2
		$a_03_15 = {8a 4c 04 1c 80 f1 90 01 01 88 8c 04 90 01 02 00 00 40 83 f8 10 72 ec 90 00 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_03_8  & 1)*2+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*2+(#a_03_12  & 1)*2+(#a_03_13  & 1)*2+(#a_03_14  & 1)*2+(#a_03_15  & 1)*1) >=8
 
}