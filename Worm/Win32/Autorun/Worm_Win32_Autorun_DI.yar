
rule Worm_Win32_Autorun_DI{
	meta:
		description = "Worm:Win32/Autorun.DI,SIGNATURE_TYPE_PEHSTR,29 00 29 00 09 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_01_1 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //10 [autorun]
		$a_01_2 = {5c 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //10 \Autorun.inf
		$a_01_3 = {6f 00 70 00 65 00 6e 00 3d 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //10 open=svchost.exe
		$a_01_4 = {6c 00 61 00 62 00 65 00 6c 00 3d 00 46 00 6c 00 61 00 73 00 68 00 20 00 44 00 72 00 69 00 76 00 65 00 } //1 label=Flash Drive
		$a_01_5 = {5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Startup\svchost.exe
		$a_01_6 = {61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 52 00 75 00 6e 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 43 00 6c 00 65 00 61 00 6e 00 65 00 72 00 } //1 action=Run Virus Cleaner
		$a_01_7 = {2e 00 2e 00 74 00 68 00 65 00 20 00 67 00 72 00 65 00 61 00 74 00 65 00 73 00 74 00 20 00 70 00 61 00 72 00 74 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 6c 00 69 00 66 00 65 00 20 00 69 00 73 00 20 00 77 00 68 00 65 00 6e 00 20 00 79 00 6f 00 75 00 20 00 61 00 63 00 68 00 69 00 76 00 65 00 20 00 65 00 6d 00 70 00 74 00 69 00 6e 00 65 00 73 00 73 00 2e 00 2e 00 } //1 ..the greatest part of your life is when you achive emptiness..
		$a_01_8 = {53 00 6f 00 20 00 69 00 6d 00 20 00 73 00 74 00 69 00 6c 00 6c 00 20 00 68 00 65 00 72 00 65 00 2e 00 2e 00 77 00 65 00 6c 00 6c 00 2c 00 20 00 69 00 20 00 68 00 61 00 76 00 65 00 20 00 61 00 20 00 73 00 75 00 72 00 70 00 72 00 69 00 73 00 65 00 20 00 77 00 61 00 69 00 74 00 69 00 6e 00 67 00 20 00 66 00 6f 00 72 00 20 00 74 00 68 00 65 00 20 00 4d 00 79 00 20 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 21 00 } //1 So im still here..well, i have a surprise waiting for the My Documents Folder!
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=41
 
}