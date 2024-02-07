
rule TrojanDownloader_Win32_Emerleox_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Emerleox.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 09 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {65 6e 64 45 6d 61 69 6c 20 55 6e 69 74 20 42 79 20 41 6e 73 6b 79 61 } //01 00  endEmail Unit By Anskya
		$a_00_1 = {23 33 32 37 37 30 } //02 00  #32770
		$a_01_2 = {20 20 a6 a6 2d 2b 51 51 } //02 00 
		$a_01_3 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //02 00  SetWindowsHookExA
		$a_01_4 = {4d 73 48 78 2e 64 6c 6c } //09 00  MsHx.dll
		$a_02_5 = {64 ff 30 64 89 20 a1 90 01 03 00 c6 00 00 8d 85 90 01 02 ff ff e8 90 01 03 00 8d 85 90 01 02 ff ff ba 90 01 03 00 e8 90 01 02 ff ff 8b 95 90 01 02 ff ff 8d 85 90 01 02 ff ff e8 90 01 02 ff ff ba 01 00 00 00 8d 85 90 01 02 ff ff e8 90 01 02 ff ff e8 90 01 02 ff ff 8d 85 90 01 02 ff ff e8 90 01 02 ff ff e8 90 01 02 ff ff 8b d0 83 ea 13 8d 85 90 01 02 ff ff 90 00 } //04 00 
		$a_02_6 = {50 6a 02 e8 90 01 02 ff ff 8b 15 90 01 03 00 89 02 6a 00 a1 90 01 03 00 50 b8 90 01 03 00 50 6a 07 e8 90 01 02 ff ff 8b 15 90 01 03 00 89 02 6a 00 a1 90 01 03 00 50 b8 90 01 03 00 50 6a 04 e8 90 01 02 ff ff 8b 15 90 01 03 00 89 02 90 00 } //05 00 
		$a_02_7 = {53 56 33 db 6a 00 68 90 01 03 00 e8 90 01 02 ff ff 8b f0 68 90 01 03 00 68 90 01 03 00 6a 00 56 e8 90 01 02 ff ff 85 c0 74 2e 68 90 01 03 00 68 90 01 03 00 6a 00 56 e8 90 01 02 ff ff 85 c0 74 18 68 90 01 03 00 68 90 01 03 00 6a 00 56 e8 90 01 02 ff ff 85 c0 74 02 b3 01 8b c3 5e 5b 90 00 } //05 00 
		$a_02_8 = {83 fe 0d 0f 85 90 01 02 00 00 8b c3 c1 e8 1f a8 01 0f 85 90 01 02 00 00 e8 90 01 02 ff ff 84 c0 0f 84 90 01 02 00 00 b8 90 01 03 00 e8 90 01 02 ff ff b8 90 01 03 00 e8 90 01 02 ff ff b8 90 01 03 00 e8 90 01 02 ff ff 8d 45 f8 e8 90 01 02 ff ff 8b 55 f8 b8 90 01 03 00 e8 90 01 02 ff ff b8 90 01 03 00 8b 15 90 01 03 00 e8 f2 d2 ff ff 8b 15 90 01 03 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}