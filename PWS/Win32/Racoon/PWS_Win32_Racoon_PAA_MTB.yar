
rule PWS_Win32_Racoon_PAA_MTB{
	meta:
		description = "PWS:Win32/Racoon.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2d 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 2e 00 5c 00 72 00 61 00 63 00 6f 00 6f 00 6e 00 2e 00 70 00 73 00 31 00 } //01 00  -executionpolicy bypass -command .\racoon.ps1
		$a_01_1 = {77 65 62 2f 75 70 6c 6f 61 64 2e 70 68 70 } //01 00  web/upload.php
		$a_01_2 = {2f 00 63 00 20 00 22 00 2d 00 2d 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 73 00 2d 00 74 00 6f 00 72 00 72 00 63 00 } //01 00  /c "--defaults-torrc
		$a_01_3 = {61 00 64 00 76 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //01 00  adv firewall set opmode mode disable
		$a_01_4 = {28 47 65 74 2d 57 6d 69 4f 62 6a 65 63 74 20 57 69 6e 33 32 5f 4f 70 65 72 61 74 69 6e 67 53 79 73 74 65 6d 29 2e 53 79 73 74 65 6d 44 72 69 76 65 } //01 00  (Get-WmiObject Win32_OperatingSystem).SystemDrive
		$a_01_5 = {63 6d 64 20 2f 63 20 27 77 68 6f 61 6d 69 2e 65 78 65 20 26 26 20 73 79 73 74 65 6d 69 6e 66 6f 2e 65 78 65 20 26 26 20 69 70 63 6f 6e 66 69 67 2e 65 78 65 20 26 26 20 6e 65 74 73 74 61 74 2e 65 78 65 27 } //00 00  cmd /c 'whoami.exe && systeminfo.exe && ipconfig.exe && netstat.exe'
	condition:
		any of ($a_*)
 
}