
rule TrojanDownloader_Win32_Banload_AMV{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMV,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 37 48 71 53 33 65 6c 42 } //01 00  Q7HqS3elB
		$a_03_1 = {8b 45 f0 c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 90 01 01 83 ef 08 8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 f0 5a 8b ca 99 f7 f9 89 55 f0 81 e3 ff 00 00 80 90 00 } //01 00 
		$a_01_2 = {5c 73 79 73 74 65 6d 33 32 5c 73 69 73 74 65 6d 6b 69 6c 00 } //01 00  獜獹整㍭尲楳瑳浥楫l
		$a_01_3 = {41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 57 69 6e 64 6f 77 73 20 4d 65 64 69 61 20 50 6c 61 79 65 72 5c 77 6d 70 6c 61 79 65 72 2e 65 78 65 00 } //01 00 
		$a_03_4 = {5c 73 79 73 74 65 6d 33 32 5c 70 69 6e 67 77 90 01 01 62 90 00 } //01 00 
		$a_01_5 = {5c 73 79 73 74 65 6d 33 32 5c 70 69 6e 67 6b 69 6c 00 } //00 00  獜獹整㍭尲楰杮楫l
	condition:
		any of ($a_*)
 
}