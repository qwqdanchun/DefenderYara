
rule TrojanDownloader_Win32_Zlob_gen_AW{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!AW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0c 00 00 "
		
	strings :
		$a_03_0 = {8a 16 84 d2 90 03 01 01 a3 b8 90 01 04 8b c8 74 10 2b f0 32 54 24 90 01 01 88 11 41 8a 14 0e 84 d2 75 f2 c6 01 00 5e c3 90 00 } //2
		$a_03_1 = {8a 17 84 d2 89 35 90 01 04 8b ce 74 10 2b fe 32 54 24 90 01 01 88 11 41 8a 14 0f 84 d2 75 f2 5f 8b c6 c6 01 00 5e c3 90 00 } //2
		$a_03_2 = {8a 0f 84 c9 b8 90 01 04 8b f0 74 10 2b f8 32 4c 24 90 01 01 88 0e 46 8a 0c 37 84 c9 75 f2 5f c6 06 00 5e c3 90 00 } //2
		$a_03_3 = {8a 0e 84 c9 b8 90 01 04 74 90 03 01 04 0f 13 90 02 04 2b f0 32 ca 88 08 8a 4c 06 90 01 01 40 84 c9 75 f3 c6 00 00 b8 90 01 04 5e c3 90 00 } //2
		$a_03_4 = {8b 44 24 14 8a 04 30 32 44 24 18 90 02 01 88 06 90 02 01 46 90 00 } //2
		$a_01_5 = {2b cf 32 44 24 18 88 06 46 8a 04 31 3a c3 75 f2 } //2
		$a_01_6 = {8a da 32 d9 88 1e 46 8a 0c 37 84 c9 75 f2 5b 5f c6 06 00 } //2
		$a_01_7 = {8a da 32 d9 88 18 8a 4c 06 01 40 84 c9 75 f1 5b c6 00 00 } //2
		$a_01_8 = {8d 49 00 32 c3 88 06 8a 44 31 01 46 84 c0 75 f3 } //1
		$a_03_9 = {6a 00 6a 01 ff 90 01 01 8d 90 01 01 24 90 01 03 ff 15 90 01 01 90 03 01 01 30 40 00 10 90 00 } //1
		$a_03_10 = {83 c4 30 6a 01 8d 85 f8 fd ff ff 50 ff 15 90 01 02 00 10 50 8d 85 f8 fd ff ff 50 ff 75 08 e8 90 01 02 00 00 90 00 } //1
		$a_01_11 = {32 ca 88 08 8a 4c 06 01 40 84 c9 75 f3 c6 00 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_01_11  & 1)*1) >=3
 
}