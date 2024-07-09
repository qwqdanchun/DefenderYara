
rule Worm_Win32_VB_UM{
	meta:
		description = "Worm:Win32/VB.UM,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {56 42 4d 73 6f 53 74 64 43 6f 6d 70 4d 67 72 } //1 VBMsoStdCompMgr
		$a_01_1 = {49 6e 66 65 6b 73 69 46 6f 6c 64 65 72 } //1 InfeksiFolder
		$a_00_2 = {5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 43 00 6f 00 64 00 65 00 5c 00 } //1 \Visual Basic Virus Code\
		$a_00_3 = {45 00 3a 00 5c 00 6d 00 73 00 76 00 62 00 76 00 6d 00 36 00 30 00 2e 00 64 00 6c 00 6c 00 } //1 E:\msvbvm60.dll
		$a_00_4 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 6c 00 6c 00 20 00 55 00 73 00 65 00 72 00 73 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 5c 00 4d 00 79 00 20 00 56 00 69 00 64 00 65 00 6f 00 73 00 5c 00 6d 00 73 00 76 00 62 00 76 00 6d 00 36 00 30 00 2e 00 64 00 6c 00 6c 00 } //1 C:\Documents and Settings\All Users\Documents\My Videos\msvbvm60.dll
		$a_02_5 = {4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 28 00 [0-02] 29 00 2e 00 65 00 78 00 65 00 } //1
		$a_00_6 = {4d 00 79 00 20 00 50 00 69 00 63 00 74 00 75 00 72 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //1 My Pictures.exe
		$a_00_7 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //1 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}