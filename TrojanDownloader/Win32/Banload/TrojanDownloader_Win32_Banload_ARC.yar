
rule TrojanDownloader_Win32_Banload_ARC{
	meta:
		description = "TrojanDownloader:Win32/Banload.ARC,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f b6 5c 30 ff 8d 55 90 01 01 8b c3 25 01 00 00 80 79 05 48 83 c8 fe 40 90 00 } //05 00 
		$a_03_1 = {50 8b 0e 8b 13 b8 90 01 04 e8 90 01 04 8b 55 fc b8 90 01 04 e8 90 01 04 8d 45 f8 50 8b 0e 8b 13 b8 90 01 04 e8 90 01 04 8b 55 f8 b8 90 01 04 e8 90 01 04 8d 55 ec b8 1a 00 00 00 90 00 } //05 00 
		$a_03_2 = {50 8b 0e 8b 13 b8 90 01 04 e8 90 01 04 8b 55 fc 8b 07 e8 90 01 04 8d 45 f8 50 8b 0e 8b 13 b8 90 01 04 e8 90 01 04 8b 55 f8 8b 07 83 c0 04 e8 90 01 04 8d 45 f4 50 8b 0e 8b 13 b8 90 00 } //03 00 
		$a_01_3 = {46 46 46 1f 56 5f 5f 56 5d 54 1f 52 5f 5d 1f 53 43 00 } //02 00 
		$a_01_4 = {42 59 54 5c 5c 03 02 1f 55 5d 5d 00 } //00 00  奂屔͜ἂ嵕]
		$a_00_5 = {e7 c6 00 00 00 } //00 c2 
	condition:
		any of ($a_*)
 
}