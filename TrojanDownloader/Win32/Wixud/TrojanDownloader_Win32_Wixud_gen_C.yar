
rule TrojanDownloader_Win32_Wixud_gen_C{
	meta:
		description = "TrojanDownloader:Win32/Wixud.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 08 00 00 "
		
	strings :
		$a_01_0 = {81 38 70 69 6f 6e 75 f7 83 c0 05 c6 00 31 c7 45 fc 01 00 00 00 } //1
		$a_01_1 = {83 eb 0d 89 58 e3 66 c7 40 e7 ff 15 8b 5d d4 89 58 e9 c6 40 ed 61 c6 40 ee e9 } //1
		$a_01_2 = {49 47 83 f9 00 74 50 81 3f 2e 65 78 65 74 02 eb ef } //1
		$a_03_3 = {75 f7 83 c0 90 01 01 bb 90 01 04 8a 0b 88 08 8a 4b 01 88 48 01 8a 4b 02 88 48 02 8a 4b 03 88 48 03 90 09 07 00 40 81 38 90 03 04 04 61 3d 30 30 26 61 3d 30 90 00 } //1
		$a_01_4 = {65 6e 63 72 69 70 74 73 74 61 72 74 73 74 72 21 } //1 encriptstartstr!
		$a_03_5 = {8b 45 0c c7 00 47 45 54 20 6a 04 ff 75 e4 e8 90 01 02 ff ff e9 90 00 } //1
		$a_03_6 = {c7 00 2e 65 78 65 b9 08 00 00 00 e8 90 01 02 ff ff 25 ff 00 00 00 ba 00 00 00 00 bb 1a 00 00 00 f7 f3 8b c2 83 c0 61 8d 5d d8 88 44 0b ff e2 dc 90 00 } //1
		$a_03_7 = {8b 00 3d 4e 45 57 20 0f 85 90 01 02 00 00 c7 45 b4 00 00 00 00 8b 45 dc e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=2
 
}