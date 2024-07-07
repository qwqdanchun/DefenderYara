
rule Worm_Win32_Autorun_DP{
	meta:
		description = "Worm:Win32/Autorun.DP,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4b 00 41 00 56 00 53 00 74 00 61 00 72 00 74 00 2e 00 65 00 78 00 65 00 } //1 KAVStart.exe
		$a_01_1 = {72 00 65 00 67 00 72 00 65 00 61 00 64 00 } //1 regread
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 4b 00 57 00 61 00 74 00 63 00 68 00 73 00 76 00 63 00 } //1 cmd.exe /c net stop KWatchsvc
		$a_01_3 = {33 00 36 00 30 00 73 00 61 00 66 00 65 00 2e 00 65 00 78 00 65 00 } //1 360safe.exe
		$a_01_4 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 53 00 6f 00 75 00 6e 00 4d 00 61 00 6e 00 } //1 HKLM\Software\Microsoft\Windows\CurrentVersion\Run\SounMan
		$a_01_5 = {61 00 75 00 74 00 6f 00 2e 00 70 00 69 00 66 00 } //1 auto.pif
		$a_01_6 = {41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 Autorun.inf
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}