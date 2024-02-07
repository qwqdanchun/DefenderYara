
rule PWS_Win32_OnLineGames_ZFG{
	meta:
		description = "PWS:Win32/OnLineGames.ZFG,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 04 8d 54 90 01 02 52 ff 15 90 01 02 00 10 8b 74 90 01 02 8b 3d 90 01 02 00 10 8d 44 90 01 02 50 66 c7 90 01 03 cf 07 ff d7 68 b8 0b 00 00 ff d5 8d 4c 90 01 02 51 66 89 90 01 03 ff d7 a1 90 01 02 00 10 85 c0 74 05 e8 90 00 } //01 00 
		$a_00_1 = {25 73 3f 61 63 6e 74 3d 25 73 26 70 61 73 73 3d 25 73 26 73 65 72 76 3d 25 73 26 67 61 6d 65 3d 44 6e 66 26 74 65 6d 70 3d 25 64 } //01 00  %s?acnt=%s&pass=%s&serv=%s&game=Dnf&temp=%d
		$a_02_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 90 02 60 90 17 06 07 07 07 06 06 09 4f 6c 6c 79 44 62 67 4f 6c 6c 79 49 43 45 50 45 64 69 74 6f 72 4c 6f 72 64 50 45 43 33 32 41 73 6d 49 6d 70 6f 72 74 52 45 43 2e 65 78 65 90 00 } //01 00 
		$a_02_3 = {5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6d 61 67 65 20 46 69 6c 65 20 45 78 65 63 75 74 69 6f 6e 20 4f 70 74 69 6f 6e 73 90 02 10 73 76 63 68 6f 73 74 2e 65 78 65 90 02 10 44 65 62 75 67 67 65 72 90 02 10 5c 90 02 10 2e 73 79 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}