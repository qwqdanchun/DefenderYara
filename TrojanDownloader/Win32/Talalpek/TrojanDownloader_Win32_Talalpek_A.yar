
rule TrojanDownloader_Win32_Talalpek_A{
	meta:
		description = "TrojanDownloader:Win32/Talalpek.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 0d 6a 05 68 df 07 00 00 68 90 01 02 40 00 e8 90 01 02 ff ff 85 c0 74 0a c7 05 90 01 03 00 02 00 00 00 eb 90 00 } //2
		$a_03_1 = {53 57 68 00 00 10 00 ff 15 90 01 02 40 00 8b f0 85 f6 75 04 33 c0 eb 90 01 01 68 10 27 00 00 56 ff 15 90 00 } //2
		$a_03_2 = {68 20 bf 02 00 50 ff 15 90 01 02 40 00 33 f6 85 c0 74 90 01 01 56 ff 35 90 01 03 00 ff 15 90 00 } //2
		$a_03_3 = {51 0f 57 c0 66 0f 13 45 90 01 01 6a 33 e8 00 00 00 00 90 00 } //2
		$a_01_4 = {54 8f 45 f8 e8 00 00 00 00 c7 44 24 04 23 00 00 00 83 04 24 0d cb } //2
		$a_03_5 = {0f b6 c2 03 c8 0f b6 c1 8b 4d f8 8a 84 05 90 01 02 ff ff 30 04 0f 47 3b 7d fc 72 90 00 } //1
		$a_01_6 = {5f 58 56 61 08 ff 34 ec d8 d4 ce 5a 6a 8a 7e 55 3a 41 66 e2 93 31 40 b3 5a 32 06 1b a4 8d ba ef } //1
		$a_01_7 = {5c 35 65 64 34 39 62 63 66 2d 32 38 36 63 2d 34 34 62 32 2d 39 36 61 66 2d 36 62 38 62 35 36 37 64 33 30 33 35 } //1 \5ed49bcf-286c-44b2-96af-6b8b567d3035
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}