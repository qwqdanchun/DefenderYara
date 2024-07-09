
rule TrojanDownloader_Win32_Zlob_gen_AC{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!AC,SIGNATURE_TYPE_PEHSTR_EXT,ffffff8a 02 ffffff80 02 0e 00 00 "
		
	strings :
		$a_00_0 = {77 69 6e 65 78 65 63 } //100 winexec
		$a_00_1 = {77 72 69 74 65 66 69 6c 65 } //100 writefile
		$a_01_2 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //100 SeShutdownPrivilege
		$a_01_3 = {79 74 74 72 75 6f 76 } //100 yttruov
		$a_01_4 = {76 69 72 75 73 20 70 72 6f 74 65 63 74 69 6f 6e } //10 virus protection
		$a_01_5 = {61 6e 74 69 76 69 72 75 73 20 73 6f 66 74 77 61 72 65 } //10 antivirus software
		$a_01_6 = {61 6e 74 69 73 70 61 79 77 61 72 65 20 73 6f 66 74 77 61 72 65 } //20 antispayware software
		$a_01_7 = {6f 6e 20 79 6f 75 72 20 73 79 73 74 65 6d 20 57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 2e } //20 on your system Windows Defender.
		$a_01_8 = {6f 6e 20 79 6f 75 72 20 73 79 73 74 65 6d 20 4d 69 63 72 6f 73 6f 66 74 20 4f 6e 65 43 61 72 65 } //20 on your system Microsoft OneCare
		$a_00_9 = {25 73 20 2f 64 65 6c 00 } //20 猥⼠敤l
		$a_00_10 = {25 73 20 2f 64 65 6c 32 00 } //10
		$a_02_11 = {2f 63 20 64 65 6c [0-05] 25 73 [0-05] 3e 3e [0-05] 6e 75 6c 6c 00 } //10
		$a_02_12 = {6a 00 6a 04 6a 02 6a 00 6a 01 68 00 00 00 40 68 ?? ?? 40 00 e8 ?? ?? ?? ?? 83 f8 ff 75 0c } //100
		$a_00_13 = {80 3e 00 74 05 30 06 46 eb f6 c9 c2 08 00 } //100
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*100+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*20+(#a_01_7  & 1)*20+(#a_01_8  & 1)*20+(#a_00_9  & 1)*20+(#a_00_10  & 1)*10+(#a_02_11  & 1)*10+(#a_02_12  & 1)*100+(#a_00_13  & 1)*100) >=640
 
}