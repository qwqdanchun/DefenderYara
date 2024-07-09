
rule TrojanDownloader_Win32_Centim{
	meta:
		description = "TrojanDownloader:Win32/Centim,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 19 00 0b 00 00 "
		
	strings :
		$a_00_0 = {64 61 69 6c 79 2d 77 65 61 74 68 65 72 } //1 daily-weather
		$a_00_1 = {47 45 54 20 25 73 20 48 54 54 50 2f 31 } //1 GET %s HTTP/1
		$a_01_2 = {50 72 6f 67 72 61 6d 46 69 6c 65 73 44 69 72 } //1 ProgramFilesDir
		$a_00_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 ShellExecute
		$a_02_4 = {55 89 e5 83 ec 08 83 c4 f4 6a 02 a1 ?? ?? ?? ?? ff d0 e8 69 ff ff ff 89 ec 5d c3 } //20
		$a_02_5 = {7c 77 77 77 [0-14] 2e [0-03] 7c 2f [0-14] 7c [0-20] 7c [0-10] 2e 65 78 65 7c } //2
		$a_02_6 = {7c 61 75 74 6f 2e [0-14] 2e [0-03] 7c 2f [0-1a] 7c [0-1a] 7c 77 65 61 74 68 65 72 2e 65 78 65 7c } //4
		$a_02_7 = {7c 74 69 6d 65 [0-14] 2e [0-03] 7c 2f [0-1a] 7c [0-1a] 7c 74 69 6d 65 2e 65 78 65 7c } //4
		$a_02_8 = {7c 61 72 63 68 69 76 65 2e [0-14] 2e [0-03] 7c 2f [0-1a] 7c [0-1a] 7c 61 72 63 68 69 76 65 2e 65 78 65 7c } //4
		$a_02_9 = {83 c4 f4 83 c4 f4 6a 00 e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 83 c4 20 83 c4 f8 68 00 04 00 00 8d ?? ?? ?? ?? ?? 50 e8 [0-15] 83 c4 fc 68 b8 0b 00 00 } //2
		$a_02_10 = {83 c4 fc 68 ?? ?? 00 00 6a 00 50 e8 ?? ?? ?? ?? 83 c4 10 [0-03] 83 c4 f8 68 ?? ?? ?? ?? 8d 85 ?? ?? ?? ?? 50 e8 } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*20+(#a_02_5  & 1)*2+(#a_02_6  & 1)*4+(#a_02_7  & 1)*4+(#a_02_8  & 1)*4+(#a_02_9  & 1)*2+(#a_02_10  & 1)*3) >=25
 
}