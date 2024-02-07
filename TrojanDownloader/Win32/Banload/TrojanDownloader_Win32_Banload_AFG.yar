
rule TrojanDownloader_Win32_Banload_AFG{
	meta:
		description = "TrojanDownloader:Win32/Banload.AFG,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 61 00 72 00 71 00 2e 00 7a 00 69 00 70 00 } //01 00  \arq.zip
		$a_01_1 = {2f 00 43 00 6f 00 6e 00 74 00 61 00 63 00 74 00 36 00 34 00 2e 00 7a 00 69 00 70 00 } //01 00  /Contact64.zip
		$a_01_2 = {3f 00 64 00 69 00 72 00 65 00 63 00 74 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 3d 00 74 00 72 00 75 00 65 00 } //01 00  ?directDownload=true
		$a_03_3 = {74 0f 8d 45 f8 ba 90 01 04 e8 90 01 04 eb 0d 8d 45 f8 ba 90 01 04 e8 90 01 04 8b 55 f4 8b 45 f8 e8 90 01 04 84 c0 0f 84 90 01 04 33 c9 b2 01 90 00 } //01 00 
		$a_03_4 = {74 0f 8d 55 f8 b8 90 01 04 e8 90 01 04 eb 0d 8d 55 f8 b8 90 01 04 e8 90 01 04 8b 55 f4 8b 45 f8 e8 90 01 04 84 c0 0f 84 90 01 04 33 c9 b2 01 90 00 } //01 00 
		$a_03_5 = {74 0f 8d 45 f8 ba 90 01 04 e8 90 01 04 eb 0d 8d 45 f8 ba 90 01 04 e8 90 01 04 8d 45 f0 ba 90 01 04 e8 90 01 04 8b 55 f4 8b 45 f8 e8 90 01 04 84 c0 0f 84 90 01 04 33 c9 b2 01 90 00 } //00 00 
		$a_00_6 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}