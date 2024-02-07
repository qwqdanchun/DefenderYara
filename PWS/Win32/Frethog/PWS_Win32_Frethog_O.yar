
rule PWS_Win32_Frethog_O{
	meta:
		description = "PWS:Win32/Frethog.O,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_00_0 = {77 6f 77 2e 65 78 65 } //01 00  wow.exe
		$a_01_1 = {57 4f 2e 44 4c 4c } //01 00  WO.DLL
		$a_01_2 = {57 4f 57 38 2d 32 39 } //01 00  WOW8-29
		$a_01_3 = {57 6f 57 2e 4c } //01 00  WoW.L
		$a_01_4 = {6b 61 76 2e 58 } //01 00  kav.X
		$a_00_5 = {61 6e 74 69 76 69 72 75 73 2e 65 78 } //01 00  antivirus.ex
		$a_00_6 = {66 73 61 76 2e 65 78 65 } //01 00  fsav.exe
		$a_00_7 = {6e 6f 72 74 6f 6e 2e 65 48 } //01 00  norton.eH
		$a_00_8 = {47 65 74 4b 65 79 62 6f 61 72 64 54 79 70 65 } //01 00  GetKeyboardType
		$a_00_9 = {63 73 72 73 73 2e 65 78 70 } //01 00  csrss.exp
		$a_00_10 = {73 76 63 68 6f 73 74 2e 4c } //01 00  svchost.L
		$a_01_11 = {57 54 46 5c 41 63 63 6f 75 6e 74 } //01 00  WTF\Account
		$a_00_12 = {72 65 61 6c 6d 6c 69 73 74 2e 77 74 66 } //01 00  realmlist.wtf
		$a_01_13 = {53 65 6e 64 41 52 50 } //00 00  SendARP
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Frethog_O_2{
	meta:
		description = "PWS:Win32/Frethog.O,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 4f 2e 44 4c 4c } //01 00  WO.DLL
		$a_01_1 = {49 47 2e 65 78 65 } //01 00  IG.exe
		$a_01_2 = {57 69 6e 53 79 73 } //01 00  WinSys
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  \drivers\etc\hosts
		$a_01_5 = {57 54 46 5c 41 63 63 6f 75 6e 74 } //01 00  WTF\Account
		$a_00_6 = {72 65 61 6c 6d 6c 69 73 74 2e 77 74 66 } //01 00  realmlist.wtf
		$a_00_7 = {73 65 74 20 72 65 61 6c 6d 6c 69 73 74 } //01 00  set realmlist
		$a_01_8 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_9 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //00 00  SOFTWARE\Borland\Delphi\RTL
	condition:
		any of ($a_*)
 
}