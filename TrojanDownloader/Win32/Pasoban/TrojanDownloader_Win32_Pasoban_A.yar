
rule TrojanDownloader_Win32_Pasoban_A{
	meta:
		description = "TrojanDownloader:Win32/Pasoban.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 6f 72 73 68 49 42 41 } //01 00  MorshIBA
		$a_01_1 = {50 4c 6f 4b 61 68 74 74 70 } //01 00  PLoKahttp
		$a_01_2 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  \WindowsUpdate.exe
		$a_01_3 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 5a 00 6f 00 6e 00 65 00 73 00 5c 00 33 00 22 00 20 00 2f 00 76 00 20 00 22 00 31 00 38 00 30 00 36 00 22 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 20 00 2f 00 66 00 } //01 00  \Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1806" /t REG_DWORD /d 0 /f
		$a_01_4 = {78 69 71 75 65 70 61 69 73 75 63 78 7a 61 73 2e 65 78 65 } //01 00  xiquepaisucxzas.exe
		$a_01_5 = {62 61 6c 77 6f 6e 73 61 2e 63 6f 6d } //00 00  balwonsa.com
		$a_00_6 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}