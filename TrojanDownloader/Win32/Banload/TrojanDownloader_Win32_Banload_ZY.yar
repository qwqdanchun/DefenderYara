
rule TrojanDownloader_Win32_Banload_ZY{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZY,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {c2 08 00 53 a1 90 01 04 83 38 00 74 90 01 01 8b 1d 90 01 04 8b 1b ff d3 5b c3 90 01 01 55 8b ec 51 53 56 57 89 4d fc 8b da 8b f0 8b c3 ff 50 f4 90 00 } //01 00 
		$a_00_1 = {73 61 6e 6f 61 75 74 68 65 6e 74 69 63 61 74 69 6f 6e 12 73 61 75 73 65 72 6e 61 6d 65 70 61 73 73 77 6f 72 64 07 69 64 73 6f 63 6b 73 } //02 00 
		$a_03_2 = {77 32 6a 00 68 80 00 00 00 6a 03 6a 00 8b c3 25 f0 00 00 00 c1 e8 04 8b 04 85 4c 71 46 00 50 8b 04 b5 40 71 46 00 50 8b c7 e8 90 01 03 ff 50 e8 90 01 03 ff 90 00 } //01 00 
		$a_00_3 = {6d 6f 7a 69 6c 6c 61 2f 33 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 69 6e 64 79 20 6c 69 62 72 61 72 79 29 } //01 00  mozilla/3.0 (compatible; indy library)
		$a_03_4 = {66 74 70 54 72 61 6e 73 66 65 72 90 02 02 66 74 70 52 65 61 64 79 90 00 } //01 00 
		$a_02_5 = {00 68 74 74 70 3a 2f 2f 90 02 ff 00 68 74 74 70 3a 2f 2f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_ZY_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZY,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 08 00 00 32 00 "
		
	strings :
		$a_03_0 = {4b 85 db 7c 90 01 01 8b 45 f0 c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 90 01 01 83 ef 08 8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 f0 5a 8b ca 99 f7 f9 89 55 f0 81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff ff ff 43 90 00 } //32 00 
		$a_03_1 = {8b f0 85 f6 7e 29 bb 01 00 00 00 8d 45 f4 8b 55 fc 0f b6 54 1a ff 2b d3 83 ea 32 e8 90 01 04 8b 55 f4 8d 45 f8 e8 90 01 04 43 4e 75 dc 8b c7 8b 55 f8 90 00 } //02 00 
		$a_00_2 = {4d 69 63 72 6f 73 6f 66 74 20 4f 66 66 69 63 65 00 00 00 00 45 72 72 6f 20 61 6f 20 61 62 72 69 72 20 6f 20 61 72 71 75 69 76 6f 2c 6f 75 20 6f } //02 00 
		$a_00_3 = {4d 69 63 72 6f 73 6f 66 74 20 4f 66 66 69 63 65 00 00 00 00 46 61 6c 68 61 20 61 6f 20 61 62 72 69 72 20 6f 20 61 72 71 75 69 76 6f 20 6f 75 20 6f } //02 00 
		$a_00_4 = {20 45 4c 53 45 20 28 74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 2f 54 29 } //02 00   ELSE (taskkill /F /IM rundll32.exe /T)
		$a_02_5 = {4d 61 74 74 65 72 4f 66 46 65 65 6c 69 6e 67 90 02 10 4b 45 50 4c 45 52 33 37 90 00 } //01 00 
		$a_00_6 = {2e 65 78 65 00 ff ff ff ff 10 00 00 00 54 41 53 4b 4b 49 4c 4c 20 2f 46 20 2f 49 4d } //01 00 
		$a_00_7 = {2e 65 78 65 00 ff ff ff ff 19 00 00 00 43 6f 6e 66 69 67 5c 62 75 73 69 6e 65 73 73 69 74 61 6d 61 72 } //00 00 
	condition:
		any of ($a_*)
 
}