
rule TrojanDownloader_Win32_Carberp_C{
	meta:
		description = "TrojanDownloader:Win32/Carberp.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 0a 00 00 02 00 "
		
	strings :
		$a_03_0 = {ac 84 c0 74 09 2c 90 01 01 34 90 01 01 04 90 01 01 aa eb f2 aa 90 00 } //02 00 
		$a_01_1 = {68 35 bf a0 be 6a 01 6a 00 e8 } //02 00 
		$a_01_2 = {68 b3 74 18 e6 6a 01 6a 00 e8 } //02 00 
		$a_03_3 = {eb 4b c6 45 90 01 01 4c c6 45 90 01 01 65 c6 45 90 01 01 74 c6 45 90 01 01 73 c6 45 90 01 01 44 c6 45 90 01 01 61 c6 45 90 01 01 6e c6 45 90 01 01 63 90 00 } //02 00 
		$a_01_4 = {0f be c9 c1 c0 07 42 33 c1 8a 0a 84 c9 75 f1 c3 } //02 00 
		$a_03_5 = {7e 07 80 31 4d 41 48 75 f9 ff 35 90 01 04 e8 90 01 04 ff 75 90 01 01 e8 90 01 04 59 59 83 f8 ff 74 28 90 00 } //02 00 
		$a_03_6 = {7d 17 8b 4d 08 03 4d 90 01 01 0f be 11 6b d2 ff 83 ea 01 8b 45 08 03 45 f0 88 10 90 00 } //01 00 
		$a_01_7 = {25 73 3f 69 64 3d 25 73 26 74 61 73 6b 3d 25 64 } //01 00  %s?id=%s&task=%d
		$a_01_8 = {75 70 74 69 6d 65 3d 25 64 26 64 6f 77 6e 6c 69 6e 6b 3d 25 64 26 75 70 6c 69 6e 6b 3d 25 64 26 69 64 3d 25 73 26 73 74 61 74 70 61 73 73 3d 25 73 26 63 6f 6d 6d 65 } //01 00  uptime=%d&downlink=%d&uplink=%d&id=%s&statpass=%s&comme
		$a_01_9 = {00 6d 79 2e 63 61 62 00 } //00 00 
	condition:
		any of ($a_*)
 
}