
rule TrojanDownloader_Win32_Small_LL{
	meta:
		description = "TrojanDownloader:Win32/Small.LL,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {be 03 00 00 00 b4 70 88 a6 90 01 04 be 1d 00 00 00 b4 70 88 a6 90 01 04 be 08 00 00 00 b4 61 88 a6 90 01 04 be 1c 00 00 00 b4 68 88 a6 90 01 04 be 00 00 00 00 b4 68 88 a6 90 01 04 be 01 00 00 00 b4 74 88 a6 90 01 04 be 07 00 00 00 b4 68 88 a6 90 01 04 be 09 00 00 00 b4 70 88 a6 90 01 04 be 17 00 00 00 b4 2f 88 a6 90 01 04 be 0b 00 00 00 b4 79 90 00 } //0a 00 
		$a_02_1 = {be 02 00 00 00 b4 6e 88 a6 90 01 04 be 04 00 00 00 b4 78 88 a6 90 01 04 68 90 01 04 e8 90 01 04 6a 00 6a 00 68 90 01 04 68 90 01 04 6a 00 68 90 01 04 50 e8 90 01 04 ff d0 68 90 01 04 e8 90 01 04 6a 05 68 90 01 04 68 90 01 04 50 e8 90 01 04 ff d0 6a 04 6a 00 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}