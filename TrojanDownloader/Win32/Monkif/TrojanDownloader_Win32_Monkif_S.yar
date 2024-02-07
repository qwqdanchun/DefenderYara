
rule TrojanDownloader_Win32_Monkif_S{
	meta:
		description = "TrojanDownloader:Win32/Monkif.S,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 72 65 63 6f 76 65 72 79 2e 62 61 6b 00 } //01 00 
		$a_01_1 = {71 71 25 73 25 73 2e 00 } //01 00  煱猥猥.
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 50 52 4f 50 4f 43 4f 4c 53 5c 46 69 6c 74 65 72 5c 74 65 78 74 2f 68 74 6d 6c 00 } //01 00  潓瑦慷敲䍜慬獳獥停佒佐佃卌䙜汩整屲整瑸栯浴l
		$a_01_3 = {43 72 70 61 74 65 54 6f 38 6c 68 65 6c 70 33 35 53 6e 61 70 30 68 6f 74 00 } //05 00 
		$a_03_4 = {8a c8 80 e9 6b 30 88 90 01 03 10 40 3d 8a 3c 00 00 7c ed 56 57 53 8d 45 f4 50 68 90 01 04 68 90 01 03 10 ff 75 f8 e8 90 00 } //05 00 
		$a_03_5 = {55 8b ec 83 ec 1c 8d 45 f4 50 c6 45 f4 6b c6 45 f5 65 c6 45 f6 72 c6 45 f7 6e c6 45 f8 65 c6 45 f9 6c c6 45 fa 33 c6 45 fb 32 c6 45 fc 00 c6 45 e4 43 c6 45 e5 72 c6 45 e6 65 c6 45 e7 61 c6 45 e8 74 c6 45 e9 65 c6 45 ea 4d c6 45 eb 75 c6 45 ec 74 c6 45 ed 65 c6 45 ee 78 c6 45 ef 41 c6 45 f0 00 ff 15 90 01 04 85 c0 75 04 33 c0 c9 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}