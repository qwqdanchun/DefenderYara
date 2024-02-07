
rule TrojanDownloader_Win32_Gurip_A{
	meta:
		description = "TrojanDownloader:Win32/Gurip.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 90 02 20 48 00 54 00 54 00 50 00 90 02 10 47 00 45 00 54 00 90 02 10 4f 00 70 00 65 00 6e 00 90 02 10 73 00 65 00 6e 00 64 00 90 00 } //02 00 
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 52 00 45 00 47 00 20 00 41 00 44 00 44 00 20 00 48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //02 00  cmd.exe /c REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_03_2 = {53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 90 02 10 65 00 78 00 65 00 90 00 } //02 00 
		$a_03_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 20 2e 00 6e 00 6f 00 2d 00 69 00 70 00 2e 00 6f 00 72 00 67 00 90 00 } //00 00 
		$a_00_4 = {5d 04 00 00 26 13 } //03 80 
	condition:
		any of ($a_*)
 
}