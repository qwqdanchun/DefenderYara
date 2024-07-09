
rule PWS_Win32_Zbot_gen_V{
	meta:
		description = "PWS:Win32/Zbot.gen!V,SIGNATURE_TYPE_PEHSTR_EXT,48 00 48 00 0e 00 00 "
		
	strings :
		$a_00_0 = {72 00 6f 00 6f 00 74 00 00 00 00 00 67 00 72 00 62 00 00 00 2e 00 74 00 78 00 74 00 00 00 } //10
		$a_00_1 = {30 39 63 6b 5f 3d 6c 64 66 75 69 68 70 66 72 65 } //10 09ck_=ldfuihpfre
		$a_02_2 = {50 6f 70 4f 70 ?? ?? ?? 2d } //10
		$a_00_3 = {72 00 73 00 6c 00 64 00 70 00 73 00 00 00 } //10
		$a_00_4 = {3a 00 53 00 74 00 72 00 69 00 6e 00 67 00 44 00 61 00 74 00 61 00 } //10 :StringData
		$a_00_5 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 3a 00 } //10 Protected Storage:
		$a_00_6 = {44 65 6c 65 74 65 55 72 6c 43 61 63 68 65 45 6e 74 72 79 } //10 DeleteUrlCacheEntry
		$a_00_7 = {46 69 6e 64 4e 65 78 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 57 } //10 FindNextUrlCacheEntryW
		$a_00_8 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 69 6e 74 65 72 6e 65 74 20 65 78 70 6c 6f 72 65 72 5c 6d 61 69 6e } //1 software\microsoft\internet explorer\main
		$a_00_9 = {53 74 61 72 74 20 50 61 67 65 } //1 Start Page
		$a_02_10 = {8b f8 32 db 85 ff 74 4c 8b 45 10 2b c6 03 c7 33 c9 85 f6 76 1d 8a d1 02 d2 f6 c1 01 75 09 b3 f6 2a da 00 1c 01 eb 06 80 c2 07 00 14 01 41 3b ce 72 e3 ff 75 10 a1 ?? ?? ?? ?? 57 6a 00 6a 00 6a 0f ff 70 28 e8 } //10
		$a_00_11 = {67 00 72 00 61 00 62 00 5f 00 25 00 53 00 5f 00 25 00 30 00 32 00 75 00 5f 00 25 00 30 00 32 00 75 00 5f 00 25 00 30 00 32 00 75 00 2e 00 62 00 69 00 6e 00 } //10 grab_%S_%02u_%02u_%02u.bin
		$a_00_12 = {25 00 53 00 3a 00 2f 00 2f 00 25 00 53 00 3a 00 25 00 53 00 40 00 25 00 75 00 2e 00 25 00 75 00 2e 00 25 00 75 00 2e 00 25 00 75 00 3a 00 25 00 75 00 2f 00 } //10 %S://%S:%S@%u.%u.%u.%u:%u/
		$a_00_13 = {47 00 72 00 61 00 62 00 62 00 65 00 64 00 20 00 64 00 61 00 74 00 61 00 20 00 66 00 72 00 6f 00 6d 00 3a 00 20 00 25 00 53 00 } //10 Grabbed data from: %S
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_02_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_02_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10) >=72
 
}