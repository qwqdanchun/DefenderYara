
rule Backdoor_Win32_Zumamumy_A{
	meta:
		description = "Backdoor:Win32/Zumamumy.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 03 00 "
		
	strings :
		$a_02_0 = {77 00 69 00 6e 00 75 00 70 00 20 00 76 00 90 02 0a 20 00 53 00 74 00 61 00 62 00 6c 00 65 00 5c 00 77 00 69 00 6e 00 75 00 70 00 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_01_1 = {49 45 37 50 61 73 73 77 6f 72 64 } //01 00  IE7Password
		$a_01_2 = {59 6f 75 20 68 61 76 65 20 62 65 65 6e 20 68 61 63 6b 65 64 } //01 00  You have been hacked
		$a_01_3 = {57 72 69 74 65 20 48 65 72 65 20 76 69 63 74 69 6d 20 21 21 21 21 21 21 21 21 } //01 00  Write Here victim !!!!!!!!
		$a_00_4 = {53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2d 00 73 00 } //02 00  Shutdown.exe -s
		$a_03_5 = {8b 4d dc 8b 51 0c 8b 85 08 ff ff ff 8b 14 02 8d 8d 40 ff ff ff ff 15 90 01 03 00 c7 45 fc 05 00 00 00 8b 8d 40 ff ff ff 51 68 90 01 03 00 ff 15 90 01 03 00 85 c0 0f 85 d5 05 00 00 c7 45 fc 06 00 00 00 8d 55 c4 52 8b 45 08 8b 08 8b 55 08 52 ff 91 10 07 00 00 89 85 54 ff ff ff 83 bd 54 ff ff ff 00 7d 23 68 10 07 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}