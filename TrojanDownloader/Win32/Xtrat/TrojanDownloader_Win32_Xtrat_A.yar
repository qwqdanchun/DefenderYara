
rule TrojanDownloader_Win32_Xtrat_A{
	meta:
		description = "TrojanDownloader:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 00 e8 90 01 04 85 c0 0f 94 05 90 01 04 6a 01 6a 00 6a 00 a1 90 01 04 e8 90 01 04 50 68 90 01 04 8b c3 e8 90 01 04 50 e8 90 01 04 80 3d 90 01 04 00 74 12 6a 02 a1 b8 a3 52 00 e8 90 01 04 50 e8 90 00 } //01 00 
		$a_00_1 = {54 00 6f 00 70 00 4d 00 6f 00 64 00 65 00 6c 00 2d 00 78 00 2d 00 } //01 00  TopModel-x-
		$a_00_2 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  Password.exe
		$a_00_3 = {43 00 4f 00 52 00 45 00 2e 00 63 00 63 00 63 00 3f 00 61 00 74 00 74 00 72 00 65 00 64 00 69 00 72 00 65 00 63 00 74 00 73 00 3d 00 30 00 26 00 64 00 3d 00 31 00 } //00 00  CORE.ccc?attredirects=0&d=1
	condition:
		any of ($a_*)
 
}