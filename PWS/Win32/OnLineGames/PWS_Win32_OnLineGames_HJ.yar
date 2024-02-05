
rule PWS_Win32_OnLineGames_HJ{
	meta:
		description = "PWS:Win32/OnLineGames.HJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d d8 6a 00 6a 00 6a 01 6a 01 51 8d 4d a4 c6 45 e3 00 c6 45 fc 15 e8 90 01 04 8b 10 8d 4d e8 51 8b c8 ff 52 60 90 00 } //01 00 
		$a_01_1 = {3f 74 6f 6e 67 6a 69 3d 00 } //01 00 
		$a_01_2 = {66 74 70 6d 64 35 3d 00 } //01 00 
		$a_01_3 = {6a 64 79 6f 75 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}