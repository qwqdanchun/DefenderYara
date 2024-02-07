
rule PWS_Win32_OnLineGames_ABF{
	meta:
		description = "PWS:Win32/OnLineGames.ABF,SIGNATURE_TYPE_PEHSTR,0c 00 0a 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 3f 61 63 74 69 6f 6e 3d 26 4e 61 6d 65 3d 25 73 26 53 74 61 74 65 3d 25 64 } //01 00  %s?action=&Name=%s&State=%d
		$a_01_1 = {5c 55 73 65 72 53 65 74 74 69 6e 67 2e 69 6e 69 } //01 00  \UserSetting.ini
		$a_01_2 = {50 49 4e 43 4f 44 45 31 } //01 00  PINCODE1
		$a_01_3 = {71 71 6c 6f 67 69 6e 2e 65 78 65 } //01 00  qqlogin.exe
		$a_01_4 = {67 7a 71 71 64 6e 66 2e 64 61 74 } //01 00  gzqqdnf.dat
		$a_01_5 = {44 4e 46 2e 65 78 65 } //01 00  DNF.exe
		$a_01_6 = {54 65 6e 51 51 41 63 63 6f 75 6e 74 2e 64 6c 6c } //01 00  TenQQAccount.dll
		$a_01_7 = {33 36 30 53 61 66 65 2e 65 78 65 } //01 00  360Safe.exe
		$a_01_8 = {33 36 30 74 72 61 79 2e 65 78 65 } //01 00  360tray.exe
		$a_01_9 = {44 4e 46 2e 44 4c 4c } //01 00  DNF.DLL
		$a_01_10 = {3f 67 61 6d 65 54 79 70 65 } //01 00  ?gameType
		$a_01_11 = {26 4e 61 6d 65 3d 25 73 26 70 61 73 73 77 6f 72 64 3d 25 73 } //00 00  &Name=%s&password=%s
	condition:
		any of ($a_*)
 
}