
rule TrojanDownloader_Win32_Upatre_BT{
	meta:
		description = "TrojanDownloader:Win32/Upatre.BT,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {83 ec 50 6a 6b ff 75 08 ff 15 90 01 02 40 00 89 45 cc 6a 64 68 90 01 02 40 00 6a 6c ff 75 08 ff 15 90 00 } //01 00 
		$a_03_1 = {5f 40 8b 06 83 c6 04 89 07 47 47 47 47 e2 f3 e8 90 01 01 01 00 00 e9 90 01 01 05 00 00 90 00 } //01 00 
		$a_01_2 = {40 00 6a 06 ff 75 08 6a 1f 6a 64 68 9f 01 00 00 68 90 01 00 00 68 00 00 00 40 68 } //00 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}