
rule PWS_Win32_Steam_B{
	meta:
		description = "PWS:Win32/Steam.B,SIGNATURE_TYPE_PEHSTR,21 00 21 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 50 00 61 00 73 00 73 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 33 00 2e 00 30 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 6b 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //0a 00  \PassStealer 3.0\Projekt1.vbp
		$a_01_1 = {73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 74 00 61 00 72 00 74 00 20 00 3e 00 73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 74 00 65 00 6d 00 70 00 2e 00 74 00 78 00 74 00 } //0a 00  steam.exe /start >steam.exetemp.txt
		$a_01_2 = {5c 00 73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 74 00 65 00 6d 00 70 00 2e 00 62 00 61 00 74 00 } //01 00  \steam.exetemp.bat
		$a_01_3 = {53 68 6f 77 53 74 65 61 6d 4c 6f 67 69 6e } //01 00  ShowSteamLogin
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_5 = {53 68 65 6c 6c 45 78 65 63 41 6e 64 57 61 69 74 } //00 00  ShellExecAndWait
	condition:
		any of ($a_*)
 
}