
rule TrojanDownloader_Win32_Agent_ZAN{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZAN,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 "
		
	strings :
		$a_02_0 = {c6 44 30 05 0a 8d 45 ?? 6a 00 50 8b 03 ff 75 10 51 ff 34 30 ff 15 ?? ?? ?? ?? 85 c0 75 ?? ff 15 ?? ?? ?? ?? 6a 05 59 3b c1 75 ?? c7 05 ?? ?? ?? ?? 09 00 00 00 89 0d ?? ?? ?? ?? e9 ?? ?? 00 00 83 f8 6d } //10
		$a_02_1 = {f3 ab 66 ab aa 8d 45 f0 c6 45 fc 03 50 68 19 00 02 00 53 c7 45 e8 00 04 00 00 ff 75 14 68 02 00 00 80 ff 15 ?? ?? ?? ?? 85 c0 75 ?? 8d 45 ?? 50 8d 85 ?? ?? ff ff 50 53 53 } //10
		$a_02_2 = {83 c4 10 8d 45 ?? 50 8d 45 ?? 50 ff 75 ?? 6a 16 ff 75 ?? ff d6 3b c3 74 ?? 39 5d ?? 76 ?? ff 75 ?? 8d 4f 10 e8 ?? ?? ff ff be 00 04 00 00 56 } //10
		$a_00_3 = {44 6c 79 3d 00 00 00 00 44 65 46 3d 00 00 00 00 56 65 72 3d 00 00 00 00 53 74 67 3d 00 00 00 00 43 6d 64 3d 00 00 00 00 55 52 4c 3d 00 00 00 00 52 65 67 3d 00 00 00 00 } //1
		$a_00_4 = {77 77 77 2e 79 61 68 6f 6f 2e 63 6f 6d 2f 00 00 77 77 77 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 00 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=31
 
}