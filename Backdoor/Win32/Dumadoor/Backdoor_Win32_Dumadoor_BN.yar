
rule Backdoor_Win32_Dumadoor_BN{
	meta:
		description = "Backdoor:Win32/Dumadoor.BN,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {6f 63 6b 73 2f 62 6f 74 } //01 00  ocks/bot
		$a_00_1 = {26 6d 61 63 68 69 6e 65 69 64 3d } //01 00  &machineid=
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 53 41 52 53 } //01 00  Software\SARS
		$a_00_3 = {3f 63 6d 64 5f 61 6c 61 72 6d 3d } //01 00  ?cmd_alarm=
		$a_00_4 = {66 74 70 70 61 73 73 77 6f 72 64 3a } //01 00  ftppassword:
		$a_00_5 = {5c 6e 65 74 64 78 2e 64 61 74 } //01 00  \netdx.dat
		$a_00_6 = {5c 77 6d 70 6c 61 79 65 72 2e 65 78 65 } //02 00  \wmplayer.exe
		$a_02_7 = {8b 44 24 08 81 ec ac 01 00 00 83 e8 00 0f 90 01 02 00 00 00 48 0f 90 01 02 00 00 00 56 57 68 90 01 04 68 90 01 04 68 90 01 04 e8 90 01 04 83 c4 0c 89 44 24 90 01 01 8b 44 24 90 01 01 8b 00 89 44 24 90 01 01 8b 90 01 05 8d 44 24 90 01 01 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}