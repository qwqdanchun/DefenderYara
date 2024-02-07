
rule Backdoor_Win32_Farfli_A{
	meta:
		description = "Backdoor:Win32/Farfli.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 07 00 "
		
	strings :
		$a_01_0 = {2e 66 61 72 66 6c 79 2e 6f 72 67 2f 74 6a 2f } //03 00  .farfly.org/tj/
		$a_01_1 = {4e 6f 77 20 69 73 20 74 68 65 20 74 69 6d 65 20 66 6f 72 20 61 6c 6c } //03 00  Now is the time for all
		$a_01_2 = {77 68 61 74 20 64 6f 20 79 61 20 77 61 6e 74 20 66 6f 72 20 6e 6f 74 68 69 6e 67 3f } //01 00  what do ya want for nothing?
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 45 34 5c } //01 00  SOFTWARE\Microsoft\IE4\
		$a_01_4 = {2e 74 78 74 3f } //03 00  .txt?
		$a_01_5 = {73 65 74 75 70 69 64 3d 25 64 26 6d 61 63 3d 25 73 } //03 00  setupid=%d&mac=%s
		$a_01_6 = {26 74 79 70 65 3d 25 64 26 76 65 72 73 69 6f 6e 3d } //03 00  &type=%d&version=
		$a_01_7 = {26 74 64 5f 72 64 3d 25 64 26 68 70 5f 31 3d 25 73 } //01 00  &td_rd=%d&hp_1=%s
		$a_01_8 = {5c 5c 2e 5c 47 6c 6f 62 61 6c 5c 43 6c 61 6e 41 76 62 } //01 00  \\.\Global\ClanAvb
		$a_00_9 = {45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //03 00  Explorer_Server
		$a_01_10 = {34 33 66 36 39 63 63 39 2d 38 30 30 37 2d 34 62 } //00 00  43f69cc9-8007-4b
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Farfli_A_2{
	meta:
		description = "Backdoor:Win32/Farfli.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {ff d6 59 83 65 d8 00 59 c7 45 dc 01 00 00 00 6a 04 c7 45 e0 02 00 00 00 59 c7 45 e4 03 00 00 00 89 4d e8 c7 45 ec 05 00 00 00 c7 45 f0 06 00 00 00 c7 45 f4 07 00 00 00 c7 45 f8 08 00 00 00 c7 45 fc 09 00 00 00 8d 45 d8 03 c1 8d 55 00 3b c2 75 f7 68 90 01 04 e8 90 01 02 00 00 59 50 68 90 01 04 ff d6 8b 35 90 01 04 59 59 6a 64 ff d6 8d 45 d0 50 e8 90 01 02 ff ff 59 ff 75 14 ff 75 10 ff 75 0c ff 75 08 90 00 } //01 00 
		$a_02_1 = {c6 80 ee 00 00 00 c5 0f 84 90 01 02 00 00 0f 85 90 01 02 00 00 eb 02 68 90 01 04 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 8b 45 08 c6 80 ef 00 00 00 19 6a 18 ff 15 90 01 04 59 c7 45 fc 31 00 00 00 68 90 01 04 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 89 85 90 01 02 ff ff c6 45 fc 32 90 00 } //01 00 
		$a_02_2 = {55 8b ec 83 ec 10 e8 90 01 02 ff ff 83 78 10 02 75 90 01 01 e8 90 01 02 ff ff 83 78 04 05 72 90 01 01 e8 90 01 02 ff ff 83 78 08 01 75 90 01 01 8d 45 fc 53 33 db 50 6a 01 53 68 90 01 04 68 02 00 00 80 ff 15 90 01 04 85 c0 75 90 01 01 8d 45 f8 c7 45 f8 04 00 00 00 50 8d 45 f4 50 8d 45 f0 50 53 68 90 01 04 ff 75 fc ff 15 90 01 04 85 c0 75 08 83 7d f4 01 75 02 b3 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}