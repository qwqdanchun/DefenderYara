
rule TrojanDownloader_Win32_Banload_BCN{
	meta:
		description = "TrojanDownloader:Win32/Banload.BCN,SIGNATURE_TYPE_PEHSTR,09 00 09 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {69 6e 20 2f 74 72 61 6e 73 66 65 72 20 61 25 52 41 4e 44 4f 4d 25 20 2f 44 6f 77 6e 6c 6f 61 64 20 2f 50 52 49 4f 52 49 54 59 20 48 49 47 48 20 68 74 74 70 3a 2f 2f } //03 00  in /transfer a%RANDOM% /Download /PRIORITY HIGH http://
		$a_01_1 = {63 6d 64 20 2f 63 20 72 65 67 2e 65 78 65 20 41 44 44 20 48 4b 4c 4d 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 31 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 22 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 53 59 53 54 45 4d 52 4f 4f 54 25 5c 31 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 2e 74 6d 70 } //03 00  cmd /c reg.exe ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v 1%COMPUTERNAME% /t REG_SZ /d "rundll32.exe %SYSTEMROOT%\1%COMPUTERNAME%.tmp
		$a_01_2 = {63 6d 64 20 2f 63 20 72 65 67 2e 65 78 65 20 41 44 44 20 48 4b 4c 4d 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 32 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 22 25 53 59 53 54 45 4d 52 4f 4f 54 25 5c 32 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 2e 63 70 6c 22 20 2f 66 } //01 00  cmd /c reg.exe ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v 2%COMPUTERNAME% /t REG_SZ /d "%SYSTEMROOT%\2%COMPUTERNAME%.cpl" /f
		$a_01_3 = {63 6d 64 20 2f 63 20 73 65 74 78 2e 65 78 65 20 55 50 4c 4b 56 41 52 49 41 42 4c 45 } //01 00  cmd /c setx.exe UPLKVARIABLE
		$a_01_4 = {47 62 50 6c 75 67 69 6e 5c 2a 2e 64 6c 6c 22 27 29 20 44 4f 20 6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 25 7e 6e 78 47 22 20 64 69 72 3d 69 6e 20 61 63 74 69 6f 6e 3d 62 6c 6f 63 6b 20 70 72 6f 67 72 61 6d 3d } //01 00  GbPlugin\*.dll"') DO netsh advfirewall firewall add rule name="%~nxG" dir=in action=block program=
		$a_01_5 = {44 69 65 62 6f 6c 64 5c 57 61 72 73 61 77 5c 2a 2e 64 6c 6c 22 27 29 20 44 4f 20 6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 25 7e 6e 78 47 22 20 64 69 72 3d 69 6e 20 61 63 74 69 6f 6e 3d 62 6c 6f 63 6b 20 70 72 6f 67 72 61 6d 3d } //03 00  Diebold\Warsaw\*.dll"') DO netsh advfirewall firewall add rule name="%~nxG" dir=in action=block program=
		$a_01_6 = {72 65 67 2e 65 78 65 20 41 44 44 20 22 48 4b 4c 4d 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 22 20 2f 76 20 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 22 72 75 6e 64 6c 6c 33 32 20 25 53 59 53 54 45 4d 52 4f 4f 54 25 5c 25 43 4f 4d 50 55 54 45 52 4e 41 4d 45 25 2e 74 6d 70 2c 23 31 22 20 2f 46 } //00 00  reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v %COMPUTERNAME% /t REG_SZ /d "rundll32 %SYSTEMROOT%\%COMPUTERNAME%.tmp,#1" /F
		$a_01_7 = {00 80 10 00 } //00 f6 
	condition:
		any of ($a_*)
 
}