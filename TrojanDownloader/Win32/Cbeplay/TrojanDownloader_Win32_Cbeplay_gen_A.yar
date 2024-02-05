
rule TrojanDownloader_Win32_Cbeplay_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Cbeplay.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_80_0 = {6f 73 3d 25 64 26 76 65 72 3d 25 73 26 69 64 78 3d 25 73 26 75 73 65 72 3d 25 73 } //os=%d&ver=%s&idx=%s&user=%s  02 00 
		$a_80_1 = {25 73 26 69 6f 63 74 6c 3d 25 64 26 64 61 74 61 3d 25 73 } //%s&ioctl=%d&data=%s  01 00 
		$a_00_2 = {2e 70 68 70 00 50 4f 53 54 20 2f 25 73 20 48 54 54 50 2f 31 2e 31 } //06 00 
		$a_00_3 = {44 37 45 42 36 30 38 35 2d 45 37 30 41 2d 34 66 35 61 2d 39 39 32 31 2d 45 36 42 44 32 34 34 41 38 43 31 37 00 } //0a 00 
		$a_03_4 = {6a 01 6a 1a 8d 4c 24 90 01 01 51 6a 00 ff 15 90 01 04 85 c0 75 90 01 01 ff 15 90 01 04 8b f8 90 03 04 04 eb 90 01 01 e9 90 01 04 8b 96 34 02 00 00 52 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}