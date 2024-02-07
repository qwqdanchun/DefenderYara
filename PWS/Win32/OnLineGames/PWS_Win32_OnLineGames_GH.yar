
rule PWS_Win32_OnLineGames_GH{
	meta:
		description = "PWS:Win32/OnLineGames.GH,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {32 d0 8d 45 90 01 01 e8 90 01 04 8b 55 90 01 01 8b c7 e8 90 01 04 43 81 e3 07 00 00 80 79 05 90 00 } //02 00 
		$a_03_1 = {b3 08 8b fb 81 e7 ff 00 00 00 57 e8 90 01 04 66 3d 01 80 0f 85 90 01 04 33 c0 8a c3 83 f8 90 01 01 0f 8f 90 01 04 0f 84 90 01 04 83 f8 90 00 } //02 00 
		$a_00_2 = {74 68 65 66 74 5f 64 6e 66 2e 64 6c 6c 00 48 6f 6f 6b 4f 66 66 00 48 6f 6f 6b 4f 6e 00 50 6f 73 74 55 52 4c } //01 00 
		$a_00_3 = {73 65 74 20 46 74 70 46 69 6c 65 3d 25 74 65 6d 70 25 5c 54 65 6d 70 41 63 63 2e 74 78 74 } //01 00  set FtpFile=%temp%\TempAcc.txt
		$a_01_4 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 64 6e 66 70 61 74 68 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_OnLineGames_GH_2{
	meta:
		description = "PWS:Win32/OnLineGames.GH,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {66 3b f3 74 30 68 90 01 04 6a 01 6a ff 6a 01 ff 15 90 01 04 6a 01 ff 15 90 01 04 66 85 c0 6a 01 0f 85 90 01 04 8d 55 ac 52 ff 15 90 01 04 eb e1 90 00 } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 33 00 36 00 30 00 5f 00 73 00 61 00 66 00 65 00 5c 00 73 00 61 00 66 00 65 00 5c 00 2a 00 2e 00 6a 00 70 00 67 00 } //01 00  C:\WINDOWS\360_safe\safe\*.jpg
		$a_01_2 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 33 00 36 00 30 00 5f 00 73 00 61 00 66 00 65 00 5c 00 73 00 65 00 6e 00 64 00 6d 00 61 00 69 00 6c 00 2e 00 62 00 61 00 74 00 } //01 00  C:\WINDOWS\360_safe\sendmail.bat
		$a_01_3 = {63 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 64 00 6e 00 66 00 70 00 61 00 74 00 68 00 2e 00 74 00 78 00 74 00 } //00 00  c:\WINDOWS\dnfpath.txt
	condition:
		any of ($a_*)
 
}