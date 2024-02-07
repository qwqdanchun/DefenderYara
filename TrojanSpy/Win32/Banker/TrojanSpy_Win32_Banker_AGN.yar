
rule TrojanSpy_Win32_Banker_AGN{
	meta:
		description = "TrojanSpy:Win32/Banker.AGN,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 66 00 5c 00 68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 31 00 5f 00 } //05 00  c:\windowsf\hotmail1_
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 34 00 2e 00 38 00 32 00 2e 00 36 00 35 00 2e 00 31 00 30 00 38 00 2f 00 6d 00 73 00 6e 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //05 00  http://184.82.65.108/msn/upload.php
		$a_01_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 69 6d 20 6d 73 6e 6d 73 67 72 2e 65 78 65 20 2f 66 } //01 00  taskkill /im msnmsgr.exe /f
		$a_01_3 = {62 61 62 61 63 61 32 54 69 6d 65 72 } //01 00  babaca2Timer
		$a_01_4 = {53 00 65 00 72 00 76 00 69 00 64 00 6f 00 72 00 20 00 69 00 6e 00 64 00 69 00 73 00 70 00 6f 00 6e 00 69 00 76 00 65 00 6c 00 2c 00 20 00 74 00 65 00 6e 00 74 00 65 00 20 00 6e 00 6f 00 76 00 61 00 6d 00 65 00 6e 00 74 00 65 00 } //01 00  Servidor indisponivel, tente novamente
		$a_01_5 = {76 61 76 69 6e 6f 33 44 6f 77 6e 6c 6f 61 64 43 6f 6d 70 6c 65 74 65 } //00 00  vavino3DownloadComplete
	condition:
		any of ($a_*)
 
}