
rule Trojan_Win32_Killav_D{
	meta:
		description = "Trojan:Win32/Killav.D,SIGNATURE_TYPE_PEHSTR,30 00 2a 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 53 00 74 00 75 00 64 00 69 00 6f 00 5c 00 56 00 42 00 39 00 38 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 74 00 6f 00 73 00 2e 00 66 00 72 00 6d 00 5c 00 46 00 6c 00 61 00 6d 00 65 00 20 00 4b 00 69 00 6c 00 6c 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //0a 00  C:\Arquivos de programas\Microsoft Visual Studio\VB98\Projetos.frm\Flame Kill\Project1.vbp
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6d 00 69 00 6e 00 64 00 2e 00 62 00 61 00 74 00 } //01 00  System32\mind.bat
		$a_01_2 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 74 61 75 73 63 61 6e 2e 65 78 65 } //01 00  %finaliza% /f /im tauscan.exe
		$a_01_3 = {25 6c 69 6d 70 61 25 } //01 00  %limpa%
		$a_01_4 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 74 72 65 6e 64 6d 69 63 72 6f 2e 65 78 65 } //01 00  %finaliza% /f /im trendmicro.exe
		$a_01_5 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 75 70 64 61 74 65 2e 65 78 65 } //01 00  %finaliza% /f /im update.exe
		$a_01_6 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 76 69 72 75 73 2e 65 78 65 } //01 00  %finaliza% /f /im virus.exe
		$a_01_7 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 76 62 75 73 74 2e 65 78 65 } //01 00  %finaliza% /f /im vbust.exe
		$a_01_8 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 76 73 6d 61 69 6e 2e 65 78 65 } //01 00  %finaliza% /f /im vsmain.exe
		$a_01_9 = {25 66 69 6e 61 6c 69 7a 61 25 20 2f 66 20 2f 69 6d 20 7a 6f 6e 65 61 6c 61 72 6d 2e 65 78 65 } //0a 00  %finaliza% /f /im zonealarm.exe
		$a_01_10 = {25 72 65 67 69 73 74 72 6f 25 20 22 48 4b 4c 4d 5c 73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 73 65 63 75 72 69 74 79 20 63 65 6e 74 65 72 22 20 2f 76 20 41 6e 74 69 56 69 72 75 73 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 34 20 2f 66 } //0a 00  %registro% "HKLM\software\microsoft\security center" /v AntiVirusDisableNotify /t REG_DWORD /d 4 /f
		$a_01_11 = {25 72 65 67 69 73 74 72 6f 25 20 22 48 4b 4c 4d 5c 73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 73 65 63 75 72 69 74 79 20 63 65 6e 74 65 72 22 20 2f 76 20 46 69 72 65 77 61 6c 6c 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 34 20 2f 66 } //00 00  %registro% "HKLM\software\microsoft\security center" /v FirewallDisableNotify /t REG_DWORD /d 4 /f
	condition:
		any of ($a_*)
 
}