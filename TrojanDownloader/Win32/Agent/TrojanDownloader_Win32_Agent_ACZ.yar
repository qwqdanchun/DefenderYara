
rule TrojanDownloader_Win32_Agent_ACZ{
	meta:
		description = "TrojanDownloader:Win32/Agent.ACZ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 04 6a 00 68 90 01 04 6a 00 6a 00 ff 15 00 10 40 00 a3 fc 23 40 00 ff 15 08 10 40 00 a3 f8 23 40 00 8d 35 00 20 40 00 c7 06 02 00 01 00 56 ff 35 fc 23 40 00 ff 15 10 10 40 00 90 00 } //1
		$a_01_1 = {56 53 57 33 d2 b9 20 00 00 00 ff 35 c4 23 40 00 58 ff 35 c8 23 40 00 5b f7 f1 c1 e0 02 03 d8 8b 3d e0 23 40 00 57 33 c0 4f 8b 33 0f ce 8a ca d3 e6 c1 ee 1f 85 f6 74 06 8b cf d3 e6 03 c6 42 83 fa 20 75 05 83 c3 04 33 d2 85 ff 75 db 59 01 0d c4 23 40 00 5f 5b 5e c3 } //1
		$a_03_2 = {c9 c3 53 8b 1d 90 01 04 33 c9 b5 01 88 2b 88 4b 01 81 c3 a0 00 00 00 fe c1 75 f1 89 0d 90 00 } //1
		$a_01_3 = {55 8b ec 33 c0 50 50 50 ff 75 08 50 50 ff 15 00 10 40 00 } //1
		$a_01_4 = {16 00 00 00 00 00 00 48 00 43 72 65 61 74 65 54 68 72 65 61 64 00 00 75 00 45 78 69 74 50 72 6f 63 65 73 73 00 e5 00 47 65 74 43 75 72 72 65 6e 74 54 68 72 65 61 64 00 00 29 01 47 65 74 50 72 6f 63 41 64 64 72 65 73 73 00 00 52 01 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}