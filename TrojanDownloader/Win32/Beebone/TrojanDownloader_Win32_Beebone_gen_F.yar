
rule TrojanDownloader_Win32_Beebone_gen_F{
	meta:
		description = "TrojanDownloader:Win32/Beebone.gen!F,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0e 00 00 "
		
	strings :
		$a_81_0 = {53 59 53 54 45 4d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c 44 69 73 6b 5c 45 6e 75 6d } //2 SYSTEM\ControlSet001\Services\Disk\Enum
		$a_03_1 = {2a 00 56 00 49 00 52 00 54 00 55 00 41 00 4c 00 2a 00 90 02 10 2a 00 56 00 4d 00 57 00 41 00 52 00 45 00 2a 00 90 02 10 2a 00 56 00 42 00 4f 00 58 00 2a 00 90 02 10 2a 00 51 00 45 00 4d 00 55 00 2a 00 90 00 } //2
		$a_03_2 = {2a 56 49 52 54 55 41 4c 2a 90 02 10 2a 56 4d 57 41 52 45 2a 90 02 10 2a 56 42 4f 58 2a 90 02 10 2a 51 45 4d 55 2a 90 00 } //2
		$a_81_3 = {2f 63 20 74 61 73 6b 6c 69 73 74 26 26 64 65 6c } //2 /c tasklist&&del
		$a_81_4 = {38 42 34 43 32 34 30 38 35 31 3c 50 41 54 43 48 31 3e 45 38 3c 50 41 54 43 48 32 3e 35 39 38 39 30 31 36 36 33 31 43 30 43 33 } //2 8B4C240851<PATCH1>E8<PATCH2>5989016631C0C3
		$a_03_5 = {72 00 75 00 6e 00 6d 00 65 00 2e 00 65 00 78 00 65 00 90 02 10 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 90 00 } //1
		$a_03_6 = {72 75 6e 6d 65 2e 65 78 65 90 02 10 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 90 00 } //1
		$a_03_7 = {52 00 74 00 6c 00 4d 00 6f 00 76 00 65 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 90 02 10 2f 00 76 00 2f 00 90 00 } //1
		$a_03_8 = {52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 90 02 10 2f 76 2f 90 00 } //1
		$a_03_9 = {47 00 65 00 74 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 90 02 10 78 00 78 00 78 00 90 00 } //1
		$a_03_10 = {47 65 74 56 6f 6c 75 6d 65 49 6e 66 6f 72 6d 61 74 69 6f 6e 90 02 10 78 78 78 90 00 } //1
		$a_01_11 = {78 00 2e 00 6d 00 70 00 65 00 67 00 } //1 x.mpeg
		$a_01_12 = {3a 00 2e 00 64 00 6c 00 } //1 :.dl
		$a_01_13 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //1 autorun
	condition:
		((#a_81_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_81_3  & 1)*2+(#a_81_4  & 1)*2+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=9
 
}