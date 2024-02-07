
rule TrojanDownloader_Win32_Tiltee_A{
	meta:
		description = "TrojanDownloader:Win32/Tiltee.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {80 7e 01 74 75 90 01 01 80 7e 02 74 75 90 01 01 80 7e 03 70 75 90 00 } //02 00 
		$a_01_1 = {66 74 61 6c 79 6c 2e 63 6e } //01 00  ftalyl.cn
		$a_01_2 = {7e 74 74 00 } //01 00  瑾t
		$a_01_3 = {3e 3e 22 63 6c 65 61 6e 2e 62 61 74 } //9c ff  >>"clean.bat
		$a_01_4 = {22 47 61 6d 65 43 75 62 65 22 20 61 6e 64 20 22 57 69 69 22 20 61 72 65 20 74 72 61 64 65 6d 61 72 6b 73 20 6f 66 20 4e 69 6e 74 65 6e 64 6f 2e 20 44 6f 6c 70 68 69 6e 20 69 73 20 6e 6f 74 20 61 66 66 69 6c 69 61 74 65 64 20 77 69 74 68 20 4e 69 6e 74 65 6e 64 6f 20 69 6e 20 61 6e 79 20 77 61 79 2e } //9c ff  "GameCube" and "Wii" are trademarks of Nintendo. Dolphin is not affiliated with Nintendo in any way.
		$a_01_5 = {44 6f 6c 70 68 69 6e 20 69 73 20 61 20 47 61 6d 65 43 75 62 65 2f 57 69 69 20 65 6d 75 6c 61 74 6f 72 2c 20 77 68 69 63 68 20 77 61 73 } //9c ff  Dolphin is a GameCube/Wii emulator, which was
		$a_01_6 = {3c 00 61 00 20 00 68 00 72 00 65 00 66 00 3d 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 6c 00 6f 00 67 00 2e 00 64 00 61 00 75 00 6d 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 68 00 61 00 68 00 76 00 69 00 64 00 65 00 6f 00 } //9c ff  <a href="http://blog.daum.net/ahahvideo
		$a_01_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 6f 00 76 00 69 00 65 00 2e 00 64 00 61 00 75 00 6d 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 63 00 74 00 69 00 76 00 65 00 58 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 4e 00 63 00 67 00 41 00 67 00 65 00 6e 00 74 00 50 00 4f 00 54 00 5f 00 53 00 65 00 74 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //00 00  http://movie.daum.net/activeX/downloader/NcgAgentPOT_Setup.exe
	condition:
		any of ($a_*)
 
}