
rule Worm_Win32_Autorun_CS{
	meta:
		description = "Worm:Win32/Autorun.CS,SIGNATURE_TYPE_PEHSTR,17 00 17 00 09 00 00 "
		
	strings :
		$a_01_0 = {5b 00 66 00 75 00 6b 00 69 00 6e 00 67 00 20 00 6f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 5d 00 } //10 [fuking operating systems]
		$a_01_1 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //10 Select * from Win32_Process
		$a_01_2 = {62 00 6f 00 6f 00 74 00 2e 00 69 00 6e 00 69 00 } //1 boot.ini
		$a_01_3 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
		$a_01_4 = {5b 00 62 00 6f 00 6f 00 74 00 20 00 6c 00 6f 00 61 00 64 00 65 00 72 00 5d 00 } //1 [boot loader]
		$a_01_5 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 2e 00 5c 00 } //1 shellexecute=.\
		$a_01_6 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 31 00 5c 00 3d 00 4f 00 70 00 65 00 6e 00 } //1 shell\1\=Open
		$a_01_7 = {74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 taskmgr.exe
		$a_01_8 = {72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 regedit.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=23
 
}