
rule TrojanSpy_Win32_VB_gen_GT{
	meta:
		description = "TrojanSpy:Win32/VB.gen!GT,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 } //1 Software\Microsoft\Windows\CurrentVersion\RunServices
		$a_01_1 = {5b 00 4c 00 6f 00 67 00 20 00 53 00 74 00 61 00 72 00 74 00 3a 00 } //1 [Log Start:
		$a_01_2 = {5b 00 4c 00 6f 00 67 00 20 00 45 00 6e 00 64 00 3a 00 } //1 [Log End:
		$a_01_3 = {42 00 65 00 67 00 69 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 20 00 6f 00 66 00 20 00 62 00 6f 00 64 00 79 00 2e 00 2e 00 2e 00 } //1 Beginning transfer of body...
		$a_01_4 = {63 6f 6e 74 65 6e 74 20 6f 66 20 6c 6f 67 66 69 6c 65 20 74 6f 20 62 65 20 6d 61 69 6c 65 64 } //1 content of logfile to be mailed
		$a_01_5 = {73 6d 74 70 6d 61 69 6c 65 72 } //1 smtpmailer
		$a_01_6 = {5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //1 \VB98\VB6.OLB
		$a_01_7 = {2e 00 71 00 6d 00 61 00 69 00 6c 00 40 00 } //1 .qmail@
		$a_01_8 = {57 00 69 00 6c 00 6c 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 69 00 6e 00 20 00 36 00 30 00 20 00 73 00 65 00 63 00 6f 00 6e 00 64 00 73 00 00 00 00 00 36 00 00 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 73 00 6f 00 63 00 6b 00 65 00 74 00 20 00 72 00 65 00 74 00 75 00 72 00 6e 00 20 00 76 00 61 00 6c 00 75 00 65 00 00 00 1a 00 00 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 65 00 64 00 20 00 74 00 6f 00 20 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}