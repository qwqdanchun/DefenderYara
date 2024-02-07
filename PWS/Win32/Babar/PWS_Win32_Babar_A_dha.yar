
rule PWS_Win32_Babar_A_dha{
	meta:
		description = "PWS:Win32/Babar.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 4d 5a 00 00 33 ff 89 5d d0 c6 45 e8 01 c6 45 e9 02 c6 45 ea 03 c6 45 eb 04 c6 45 ec 05 c6 45 ed 06 c6 45 ee 07 c6 45 ef 08 66 39 03 0f 85 90 01 04 8b 43 3c 03 c3 81 38 50 45 00 00 90 00 } //01 00 
		$a_03_1 = {83 7e 14 00 75 90 01 01 68 31 70 79 66 e8 90 01 04 89 46 14 90 00 } //01 00 
		$a_03_2 = {83 7e 20 00 75 90 01 01 68 db 07 a2 af e8 90 01 04 89 46 20 90 00 } //01 00 
		$a_00_3 = {38 65 62 37 36 32 66 34 3b 39 35 62 62 36 35 31 39 3b 66 65 66 64 34 66 35 62 } //00 00  8eb762f4;95bb6519;fefd4f5b
	condition:
		any of ($a_*)
 
}