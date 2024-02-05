
rule PWS_Win32_OnLineGames_JK_dll{
	meta:
		description = "PWS:Win32/OnLineGames.JK!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 3f 88 63 00 00 74 0a 6a 32 ff 15 90 01 04 eb ee e8 90 01 04 b9 ff 00 00 00 33 c0 90 00 } //01 00 
		$a_01_1 = {c6 45 bc 44 c6 45 bd 49 c6 45 be 53 c6 45 bf 50 c6 45 c0 4c c6 45 c1 41 c6 45 c2 59 88 5d c3 ff 15 } //01 00 
		$a_03_2 = {ff 50 c6 45 90 01 01 25 c6 45 90 01 01 73 c6 45 90 01 01 3f c6 45 90 01 01 61 c6 45 90 01 01 63 90 01 03 74 90 01 03 69 90 01 03 6f 90 01 03 6e c6 45 90 01 01 3d 90 01 03 74 90 01 03 65 90 01 03 73 90 01 03 74 c6 45 90 01 01 6c c6 45 90 01 01 6f c6 45 90 01 01 63 c6 45 90 01 01 6b 90 00 } //01 00 
		$a_01_3 = {25 73 2f 62 6d 70 2f 25 73 5f 6d 69 62 61 6f 6b 61 2e 62 6d 70 } //00 00 
	condition:
		any of ($a_*)
 
}