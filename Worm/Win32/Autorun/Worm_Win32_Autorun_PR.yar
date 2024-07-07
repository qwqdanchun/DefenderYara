
rule Worm_Win32_Autorun_PR{
	meta:
		description = "Worm:Win32/Autorun.PR,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [Autorun]
		$a_01_1 = {55 00 73 00 65 00 41 00 75 00 74 00 6f 00 50 00 6c 00 61 00 79 00 3d 00 31 00 } //1 UseAutoPlay=1
		$a_01_2 = {49 00 63 00 6f 00 6e 00 3d 00 25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 2c 00 37 00 } //1 Icon=%SystemRoot%\system32\shell32.dll,7
		$a_01_3 = {41 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 4f 00 70 00 65 00 6e 00 20 00 64 00 69 00 73 00 6b 00 20 00 74 00 6f 00 20 00 76 00 69 00 65 00 77 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //1 Action=Open disk to view files
		$a_01_4 = {4f 00 70 00 65 00 6e 00 3d 00 46 00 4f 00 55 00 4e 00 44 00 2e 00 30 00 30 00 37 00 2e 00 65 00 78 00 65 00 } //1 Open=FOUND.007.exe
		$a_01_5 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 46 00 4f 00 55 00 4e 00 44 00 2e 00 30 00 30 00 37 00 2e 00 65 00 78 00 65 00 } //1 ShellExecute=FOUND.007.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}