
rule PWS_Win32_OnLineGames_NO{
	meta:
		description = "PWS:Win32/OnLineGames.NO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {6d 50 56 c6 45 90 01 01 69 c6 45 90 01 01 62 c6 45 90 01 01 61 c6 45 90 01 01 6f c6 45 90 01 01 2e c6 45 90 01 01 61 c6 45 90 01 01 73 90 00 } //02 00 
		$a_03_1 = {73 50 8d 85 90 01 04 50 c6 45 90 01 01 3f c6 45 90 01 01 61 c6 45 90 01 01 63 c6 45 90 01 01 74 c6 45 90 01 01 69 c6 45 90 01 01 6f c6 45 90 01 01 6e c6 45 90 01 01 3d 90 00 } //02 00 
		$a_03_2 = {8a 1c 03 32 da 88 18 40 ff 4d 90 01 01 89 45 90 01 01 75 ad 90 00 } //01 00 
		$a_00_3 = {25 73 3f 61 63 74 69 6f 6e 3d 74 65 73 74 6c 6f 63 6b 26 75 3d 25 73 } //01 00  %s?action=testlock&u=%s
		$a_00_4 = {25 73 3f 61 63 74 69 6f 6e 3d 64 72 6f 70 6f 66 66 26 75 3d 25 73 } //00 00  %s?action=dropoff&u=%s
	condition:
		any of ($a_*)
 
}