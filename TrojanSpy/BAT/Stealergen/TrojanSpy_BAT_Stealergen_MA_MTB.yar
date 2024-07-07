
rule TrojanSpy_BAT_Stealergen_MA_MTB{
	meta:
		description = "TrojanSpy:BAT/Stealergen.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 "
		
	strings :
		$a_03_0 = {06 08 16 1b 6f 90 01 03 0a 26 20 90 01 03 a4 13 0b 11 08 20 90 01 03 ff 5a 11 0b 61 38 90 01 03 ff 07 08 6f 90 01 03 06 20 90 01 03 b3 13 0c 11 08 20 90 01 03 ff 5a 11 0c 61 38 90 01 03 ff 73 90 01 03 06 0b 1b 8d 90 01 03 01 0c 20 90 01 03 50 13 0a 11 08 20 90 01 03 ff 5a 11 0a 61 38 90 01 03 ff 20 90 01 03 da 13 0e 11 08 20 90 01 03 ff 5a 11 0e 61 38 90 01 03 ff 06 6f 90 01 03 0a 13 07 20 90 01 03 c0 38 90 01 03 ff 11 06 1e 32 08 20 90 01 03 d6 25 2b 06 20 90 01 03 ea 25 26 38 90 00 } //1
		$a_02_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 62 00 69 00 74 00 62 00 75 00 63 00 6b 00 65 00 74 00 2e 00 6f 00 72 00 67 00 2f 00 63 00 68 00 65 00 67 00 65 00 33 00 2f 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 6c 00 6c 00 63 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 90 02 15 2e 00 6a 00 70 00 65 00 67 00 90 00 } //1
		$a_02_2 = {68 74 74 70 73 3a 2f 2f 62 69 74 62 75 63 6b 65 74 2e 6f 72 67 2f 63 68 65 67 65 33 2f 73 6f 66 74 77 61 72 65 6c 6c 63 2f 64 6f 77 6e 6c 6f 61 64 73 2f 90 02 15 2e 6a 70 65 67 90 00 } //1
		$a_81_3 = {70 6f 77 65 72 73 68 65 6c 6c } //1 powershell
		$a_81_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_81_5 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_7 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 CheckRemoteDebuggerPresent
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_9 = {53 6c 65 65 70 } //1 Sleep
	condition:
		((#a_03_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=9
 
}