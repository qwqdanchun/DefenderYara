
rule PWS_Win32_OnLineGames_CC{
	meta:
		description = "PWS:Win32/OnLineGames.CC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 45 fc 81 36 90 01 04 81 3e 00 04 00 00 0f 83 90 00 } //01 00 
		$a_03_1 = {89 45 fc 81 75 fc 90 01 04 81 7d fc 00 04 00 00 0f 83 90 00 } //02 00 
		$a_03_2 = {00 10 8a 50 02 32 96 90 01 04 28 d1 88 48 01 8a 48 03 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}