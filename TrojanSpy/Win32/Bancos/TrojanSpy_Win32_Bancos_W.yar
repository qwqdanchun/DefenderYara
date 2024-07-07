
rule TrojanSpy_Win32_Bancos_W{
	meta:
		description = "TrojanSpy:Win32/Bancos.W,SIGNATURE_TYPE_PEHSTR,35 00 35 00 0a 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_01_1 = {5c 00 73 00 6e 00 64 00 72 00 65 00 63 00 5c 00 } //10 \sndrec\
		$a_01_2 = {5c 00 63 00 6f 00 6e 00 66 00 78 00 62 00 2e 00 73 00 79 00 73 00 } //10 \confxb.sys
		$a_01_3 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //10 explorer.exe
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //10 CreateToolhelp32Snapshot
		$a_01_5 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 31 00 5c 00 67 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\Downloaded Program Files\CONFLICT.1\g*.dll
		$a_01_6 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 32 00 5c 00 67 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\Downloaded Program Files\CONFLICT.2\g*.dll
		$a_01_7 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 33 00 5c 00 67 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\Downloaded Program Files\CONFLICT.3\g*.dll
		$a_01_8 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 34 00 5c 00 67 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\Downloaded Program Files\CONFLICT.4\g*.dll
		$a_01_9 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 35 00 5c 00 67 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\Downloaded Program Files\CONFLICT.5\g*.dll
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=53
 
}