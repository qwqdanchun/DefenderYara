
rule Worm_Win32_VB_FY{
	meta:
		description = "Worm:Win32/VB.FY,SIGNATURE_TYPE_PEHSTR,08 00 07 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 74 75 64 69 6f 5c 56 42 39 38 5c } //1 Studio\VB98\
		$a_01_1 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //1 [AutoRun]
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 3d 00 4f 00 75 00 76 00 72 00 69 00 72 00 } //1 shell\open=Ouvrir
		$a_01_3 = {57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //1 Wscript.Shell
		$a_01_4 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 75 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 } //1 HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\userinit
		$a_01_5 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 2e 00 58 00 } //1 shell\open\Command=.X
		$a_01_6 = {74 00 73 00 6b 00 69 00 6c 00 6c 00 20 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //1 tskill explorer
		$a_01_7 = {59 00 6f 00 75 00 6e 00 65 00 58 00 20 00 48 00 61 00 63 00 6b 00 65 00 52 00 } //1 YouneX HackeR
		$a_01_8 = {49 00 64 00 6f 00 6e 00 54 00 50 00 6c 00 61 00 79 00 2e 00 76 00 62 00 70 00 } //1 IdonTPlay.vbp
		$a_01_9 = {47 00 3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 G:\autorun.inf
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=7
 
}