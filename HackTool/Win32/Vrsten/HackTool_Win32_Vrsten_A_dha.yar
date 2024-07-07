
rule HackTool_Win32_Vrsten_A_dha{
	meta:
		description = "HackTool:Win32/Vrsten.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 0b 00 00 "
		
	strings :
		$a_01_0 = {25 00 73 00 5c 00 53 00 79 00 73 00 57 00 4f 00 57 00 36 00 34 00 5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //20 %s\SysWOW64\rundll32.exe
		$a_01_1 = {25 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //20 %s\system32\rundll32.exe
		$a_01_2 = {50 72 6f 63 65 73 73 20 25 64 20 43 72 65 61 74 65 64 } //30 Process %d Created
		$a_01_3 = {73 00 6c 00 62 00 64 00 6e 00 73 00 6e 00 31 00 } //10 slbdnsn1
		$a_01_4 = {73 00 6c 00 62 00 64 00 6e 00 73 00 6b 00 31 00 } //10 slbdnsk1
		$a_03_5 = {73 6c 62 64 6e 73 90 04 01 02 6e 6b 31 90 00 } //10
		$a_03_6 = {73 6c 62 64 6e 73 20 90 04 01 02 4e 4b 31 90 00 } //10
		$a_01_7 = {73 00 6c 00 62 00 73 00 6d 00 62 00 6e 00 31 00 } //10 slbsmbn1
		$a_01_8 = {73 00 6c 00 62 00 73 00 6d 00 62 00 6b 00 31 00 } //10 slbsmbk1
		$a_03_9 = {73 6c 62 73 6d 62 90 04 01 02 6e 6b 31 90 00 } //10
		$a_03_10 = {73 6c 62 73 6d 62 20 90 04 01 02 4e 4b 31 90 00 } //10
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*30+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_03_5  & 1)*10+(#a_03_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_03_9  & 1)*10+(#a_03_10  & 1)*10) >=100
 
}