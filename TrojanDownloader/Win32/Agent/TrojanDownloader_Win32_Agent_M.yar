
rule TrojanDownloader_Win32_Agent_M{
	meta:
		description = "TrojanDownloader:Win32/Agent.M,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {b8 4f 00 00 00 cd 41 66 3d 86 f3 0f 94 c0 0f b6 c0 } //0a 00 
		$a_00_1 = {64 a1 30 00 00 00 8a 40 02 0f b6 c0 } //0a 00 
		$a_00_2 = {33 db b9 0a 00 00 00 b8 68 58 4d 56 66 ba 58 56 ed 81 fb 68 58 4d 56 0f 94 c0 0f b6 c0 } //01 00 
		$a_02_3 = {80 39 00 56 57 8b c2 74 3b 8b f8 8b f1 2b f9 66 8b 0d 90 01 04 80 0d 90 01 04 ff 66 89 0d 90 01 04 8a 0e 80 f1 90 01 01 66 c7 05 90 01 04 fe ff c6 05 90 01 04 ff 88 0c 37 74 06 46 80 3e 00 75 cb 66 8b 0d 90 01 04 5f 66 f7 d9 66 89 0d 90 01 04 5e 0f be 0d 90 01 04 81 c9 90 01 04 89 0d 90 01 04 c3 90 00 } //01 00 
		$a_02_4 = {57 50 56 fe c1 6a 01 52 88 0d 90 01 04 e8 90 01 02 00 00 a0 90 01 04 80 0d 90 01 04 ff 00 05 90 01 04 80 64 37 ff 00 0f be 05 90 01 04 83 c4 14 0d 90 01 04 a3 90 01 04 8b c6 5f 66 c7 05 90 01 04 fe ff 5e c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}