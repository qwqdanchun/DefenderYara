
rule PWS_Win32_OnLineGames_AN{
	meta:
		description = "PWS:Win32/OnLineGames.AN,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 05 00 "
		
	strings :
		$a_03_0 = {0b c0 74 45 89 85 90 01 01 fe ff ff c7 85 90 01 01 fe ff ff e8 03 00 00 68 90 01 02 40 00 ff 15 90 01 02 40 00 40 89 85 90 01 01 fe ff ff 8d 05 90 01 02 40 00 89 85 90 01 01 fe ff ff 8d 85 90 01 01 fe ff ff 50 6a 00 6a 4a ff b5 90 01 01 fe ff ff ff 15 90 01 02 40 00 90 00 } //05 00 
		$a_03_1 = {68 60 ea 00 00 6a 00 6a 00 ff 15 90 01 02 00 10 a3 90 01 02 00 10 68 90 01 02 00 10 8d 85 90 01 02 ff ff 50 ff 15 90 01 02 00 10 0b c0 75 3f 68 c8 00 00 00 90 00 } //05 00 
		$a_00_2 = {48 42 51 51 2e 64 6c 6c } //05 00  HBQQ.dll
		$a_00_3 = {50 72 6f 67 72 61 6d 20 4d 61 6e 61 67 65 72 } //01 00  Program Manager
		$a_00_4 = {33 36 30 73 61 66 65 62 6f 78 2e 65 78 65 } //01 00  360safebox.exe
		$a_00_5 = {72 65 6e 61 6d 65 20 25 73 20 25 73 } //01 00  rename %s %s
		$a_00_6 = {69 66 20 65 78 69 73 74 20 25 73 20 67 6f 74 6f 20 52 65 70 65 61 74 } //01 00  if exist %s goto Repeat
		$a_00_7 = {64 65 6c 20 25 73 } //01 00  del %s
		$a_00_8 = {68 74 74 70 3a 2f 2f } //01 00  http://
		$a_00_9 = {46 6f 72 74 68 67 6f 6e 65 72 } //00 00  Forthgoner
	condition:
		any of ($a_*)
 
}