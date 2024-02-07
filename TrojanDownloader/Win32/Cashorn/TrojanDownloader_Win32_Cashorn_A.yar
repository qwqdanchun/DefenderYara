
rule TrojanDownloader_Win32_Cashorn_A{
	meta:
		description = "TrojanDownloader:Win32/Cashorn.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {83 be 90 01 00 00 06 75 43 0f b6 86 99 01 00 00 0f b6 8e 98 01 00 00 0f b6 96 97 01 00 00 50 0f b6 86 96 01 00 00 51 0f b6 8e 95 01 00 00 52 0f b6 96 94 01 00 00 } //01 00 
		$a_03_1 = {68 40 9c 00 00 8d 8c 24 90 01 01 00 00 00 6a 00 51 e8 90 01 04 83 c4 0c 68 3f 9c 00 00 8d 94 24 90 01 01 00 00 00 52 8d 4c 24 90 01 01 e8 90 01 04 85 c0 75 bd 90 00 } //02 00 
		$a_01_2 = {3f 66 69 6c 65 3d 73 65 74 75 70 26 73 74 61 74 75 73 3d 64 69 66 66 64 61 74 65 00 } //02 00  昿汩㵥敳畴♰瑳瑡獵搽晩摦瑡e
		$a_01_3 = {43 61 73 68 6f 6e 75 70 64 61 74 65 00 } //02 00 
		$a_01_4 = {2f 6c 6f 67 2f 75 70 64 61 74 65 2e 70 68 70 3f 00 } //02 00 
		$a_01_5 = {2f 64 6f 77 6e 6c 6f 61 64 2f 72 75 6e 5f 64 6c 69 73 74 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}