
rule PWS_Win32_OnLineGames_FU{
	meta:
		description = "PWS:Win32/OnLineGames.FU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 75 3d 25 73 26 70 3d 25 73 26 72 3d 25 73 } //01 00  &u=%s&p=%s&r=%s
		$a_01_1 = {61 63 74 69 6f 6e 3d 74 65 73 74 6c 6f 63 6b 26 75 3d 25 73 00 } //01 00 
		$a_01_2 = {61 63 74 69 6f 6e 3d 67 65 74 70 72 6f 63 26 75 3d 25 73 } //01 00  action=getproc&u=%s
		$a_01_3 = {61 63 74 69 6f 6e 3d 70 6f 73 74 6d 62 26 75 3d 25 73 26 6d 62 3d 25 73 } //02 00  action=postmb&u=%s&mb=%s
		$a_01_4 = {2b c6 83 e8 05 89 46 01 8d 47 fb 50 68 90 00 00 00 8d 46 05 } //03 00 
		$a_01_5 = {81 7d f4 1c d7 53 56 74 0e } //01 00 
		$a_01_6 = {74 10 8b c8 2b f0 8a 54 0e 01 47 41 84 d2 88 11 75 f4 } //00 00 
	condition:
		any of ($a_*)
 
}