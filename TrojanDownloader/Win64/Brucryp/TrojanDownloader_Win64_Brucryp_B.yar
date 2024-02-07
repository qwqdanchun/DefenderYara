
rule TrojanDownloader_Win64_Brucryp_B{
	meta:
		description = "TrojanDownloader:Win64/Brucryp.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 64 35 61 39 30 30 30 30 33 30 30 30 30 30 30 30 34 30 30 30 30 30 30 66 66 66 66 } //01 00  4d5a90000300000004000000ffff
		$a_01_1 = {34 32 30 66 62 36 30 34 32 32 34 39 66 66 63 30 66 66 63 31 34 31 38 38 34 30 66 66 34 38 66 66 63 32 34 38 66 66 63 66 37 35 65 30 34 35 38 62 63 33 34 64 38 62 63 62 34 34 38 64 35 37 34 30 39 30 34 32 30 66 62 36 35 34 30 63 36 30 34 32 30 66 62 36 34 63 30 64 36 30 34 39 38 33 63 31 } //01 00  420fb6042249ffc0ffc1418840ff48ffc248ffcf75e0458bc34d8bcb448d574090420fb6540c60420fb64c0d604983c1
		$a_01_2 = {0f b6 42 ff 0f b6 0a 3c 61 7c 04 } //00 00 
	condition:
		any of ($a_*)
 
}