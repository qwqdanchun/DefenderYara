
rule PWS_Win32_QQThief_K{
	meta:
		description = "PWS:Win32/QQThief.K,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {25 73 5c 7e 40 55 77 4b 4a 2e 61 76 69 } //0a 00  %s\~@UwKJ.avi
		$a_01_1 = {77 00 69 00 6e 00 6b 00 62 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //01 00  winkb32.dll
		$a_00_2 = {62 64 70 61 73 73 25 64 } //01 00  bdpass%d
		$a_00_3 = {70 61 73 73 69 6e 66 6f 25 64 } //01 00  passinfo%d
		$a_00_4 = {73 6b 79 70 65 70 61 73 73 25 64 } //01 00  skypepass%d
		$a_00_5 = {62 61 69 64 75 68 69 2e 65 78 65 } //01 00  baiduhi.exe
		$a_00_6 = {71 71 2e 65 78 65 } //01 00  qq.exe
		$a_00_7 = {73 6b 79 70 65 2e 65 78 65 } //01 00  skype.exe
		$a_00_8 = {68 64 77 6f 6b 6e 71 64 2d 64 77 64 } //01 00  hdwoknqd-dwd
		$a_00_9 = {6c 72 73 72 62 2d 64 77 64 } //01 00  lrsrb-dwd
		$a_00_10 = {70 70 2d 64 77 64 } //01 00  pp-dwd
		$a_00_11 = {72 6a 78 6f 64 2d 64 77 64 } //00 00  rjxod-dwd
	condition:
		any of ($a_*)
 
}