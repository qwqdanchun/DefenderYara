
rule TrojanDownloader_Win32_Zdowbot_B{
	meta:
		description = "TrojanDownloader:Win32/Zdowbot.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 67 66 66 66 f7 e9 c1 fa 02 8b c2 c1 e8 1f 03 c2 8d 04 80 03 c0 8b d1 2b d0 8a 82 90 01 03 00 30 04 0e 41 3b 0d 90 01 03 00 72 ce 90 00 } //01 00 
		$a_03_1 = {b8 67 66 66 66 f7 e9 c1 fa 02 8b c2 c1 e8 1f 03 c2 8b 15 90 01 03 00 8d 04 80 03 c0 2b d0 8a 04 0a 30 04 0e 41 3b 0d 90 01 03 00 76 cd 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}