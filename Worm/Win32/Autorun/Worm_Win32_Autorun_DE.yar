
rule Worm_Win32_Autorun_DE{
	meta:
		description = "Worm:Win32/Autorun.DE,SIGNATURE_TYPE_PEHSTR,33 00 32 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_01_1 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //10 [AutoRun]
		$a_01_2 = {3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //10 :\autorun.inf
		$a_01_3 = {5c 00 70 00 72 00 6f 00 79 00 5c 00 69 00 63 00 6f 00 73 00 2e 00 76 00 62 00 70 00 } //10 \proy\icos.vbp
		$a_01_4 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 3d 00 20 00 62 00 6f 00 6f 00 74 00 2e 00 76 00 62 00 73 00 } //10 shellexecute = boot.vbs
		$a_01_5 = {53 00 65 00 74 00 20 00 6f 00 53 00 68 00 65 00 6c 00 6c 00 3d 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 } //1 Set oShell=CreateObject("WScript.Shell")
		$a_01_6 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=50
 
}