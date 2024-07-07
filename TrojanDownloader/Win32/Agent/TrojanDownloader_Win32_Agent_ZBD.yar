
rule TrojanDownloader_Win32_Agent_ZBD{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZBD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {56 8b 74 24 08 85 f6 75 04 33 c0 5e c3 ff 15 90 01 04 50 e8 90 01 02 00 00 83 c4 04 e8 90 01 02 00 00 99 b9 1a 00 00 00 f7 f9 83 c2 61 52 e8 90 01 02 00 00 99 b9 1a 00 00 00 f7 f9 83 c2 61 52 90 00 } //1
		$a_03_1 = {83 f9 03 76 3c 50 8d 4c 24 28 50 8d 94 24 90 90 00 00 00 51 52 50 e8 90 01 02 00 00 85 c0 75 12 6a 01 50 50 8d 44 24 30 50 68 90 01 04 6a 00 ff d5 68 d0 07 00 00 46 ff 15 90 01 04 e9 1d ff ff ff 90 00 } //1
		$a_01_2 = {25 63 25 63 25 63 25 63 00 00 00 00 25 73 5c 25 73 00 00 00 77 69 6e 68 6c 70 33 32 2e 65 78 65 00 00 00 00 6f 70 65 6e 00 00 00 00 6f 6f 00 00 25 73 5c 25 73 25 64 2e 65 78 65 00 63 25 64 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}