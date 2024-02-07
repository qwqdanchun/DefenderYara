
rule TrojanDownloader_Win32_Seimon_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Seimon.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 25 73 25 73 5f 25 73 } //01 00  %s%s%s_%s
		$a_01_1 = {25 4d 41 43 41 44 44 52 } //02 00  %MACADDR
		$a_01_2 = {5f 78 6d 6c 2e 70 68 70 3f 61 66 66 5f 69 64 3d 25 41 46 46 49 44 26 6c 75 6e 63 68 5f 69 64 3d 25 4c 55 4e 43 48 49 44 } //01 00  _xml.php?aff_id=%AFFID&lunch_id=%LUNCHID
		$a_01_3 = {2e 74 61 67 72 65 76 65 6e 75 65 2e 6e 65 74 2f } //02 00  .tagrevenue.net/
		$a_03_4 = {5f 71 75 69 74 65 76 65 6e 74 00 90 02 04 68 74 74 70 3a 2f 2f 77 77 77 2e 6d 69 63 72 6f 73 6f 66 74 2e 90 00 } //01 00 
		$a_01_5 = {50 61 63 6b 65 74 53 6e 69 66 66 65 72 43 6c 61 73 73 31 00 } //01 00  慐正瑥湓晩敦䍲慬獳1
		$a_01_6 = {77 65 6c 2d 66 6f 72 6d 65 64 2e 00 } //01 00 
		$a_01_7 = {70 72 6f 63 2e 70 68 70 3f 6d 6f 64 65 3d 31 26 6b 65 79 3d 25 } //02 00  proc.php?mode=1&key=%
		$a_01_8 = {25 73 5c 65 6c 2e 64 61 74 00 00 00 25 57 49 4e 44 4f 57 53 } //00 00 
	condition:
		any of ($a_*)
 
}