
rule TrojanDownloader_Win32_FakeIE_B{
	meta:
		description = "TrojanDownloader:Win32/FakeIE.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {00 6d 61 67 6e 65 74 00 } //1 洀条敮t
		$a_01_1 = {00 48 74 6d 6c 56 69 65 77 65 72 00 } //1 䠀浴噬敩敷r
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 32 33 34 35 2e 63 6f 6d } //1 http://www.2345.com
		$a_01_3 = {68 74 74 70 3a 2f 2f 76 6f 64 2e 37 69 62 74 2e 63 6f 6d 2f 69 6e 64 65 78 2e 70 68 70 3f 75 72 6c 3d } //1 http://vod.7ibt.com/index.php?url=
		$a_01_4 = {46 37 46 43 31 41 45 34 35 43 35 43 34 37 35 38 41 46 30 33 45 46 31 39 46 31 38 41 33 39 35 44 } //1 F7FC1AE45C5C4758AF03EF19F18A395D
		$a_01_5 = {32 37 62 62 32 30 66 64 64 33 65 31 34 35 65 34 62 65 65 33 64 62 33 39 64 64 64 36 65 36 34 63 } //1 27bb20fdd3e145e4bee3db39ddd6e64c
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}