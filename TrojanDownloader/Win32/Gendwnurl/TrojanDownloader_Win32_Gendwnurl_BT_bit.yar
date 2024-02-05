
rule TrojanDownloader_Win32_Gendwnurl_BT_bit{
	meta:
		description = "TrojanDownloader:Win32/Gendwnurl.BT!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {40 00 2e 76 62 73 74 2d 81 b9 90 01 02 40 00 2e 6a 73 00 74 21 83 f9 14 75 e2 90 00 } //01 00 
		$a_00_1 = {63 30 37 37 64 64 65 36 2d 36 33 36 34 2d 34 34 31 39 2d 61 63 64 32 2d 62 38 35 30 35 38 31 62 38 66 36 34 } //01 00 
		$a_01_2 = {42 81 c3 aa 00 00 00 83 f3 48 30 1a e2 f2 } //00 00 
	condition:
		any of ($a_*)
 
}