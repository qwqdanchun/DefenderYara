
rule Trojan_Win32_Sybfusha_A{
	meta:
		description = "Trojan:Win32/Sybfusha.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 66 00 75 00 63 00 6b 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //4 \sysfucker\Project
		$a_01_1 = {73 00 74 00 61 00 72 00 74 00 20 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6e 00 6f 00 74 00 66 00 61 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 } //1 start c:\windows\notfall.bat
		$a_01_2 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 74 00 20 00 31 00 30 00 20 00 2d 00 66 00 } //1 shutdown -s -t 10 -f
		$a_01_3 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 65 00 72 00 61 00 73 00 65 00 20 00 2f 00 66 00 20 00 25 00 48 00 4f 00 4d 00 45 00 44 00 52 00 49 00 56 00 45 00 25 00 5c 00 62 00 6f 00 6f 00 74 00 2e 00 69 00 6e 00 69 00 } //1 cmd /c erase /f %HOMEDRIVE%\boot.ini
		$a_01_4 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 61 00 73 00 73 00 6f 00 63 00 20 00 2e 00 65 00 78 00 65 00 3d 00 57 00 69 00 6e 00 52 00 41 00 52 00 } //1 cmd /c assoc .exe=WinRAR
		$a_01_5 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 20 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 20 00 2f 00 61 00 63 00 74 00 69 00 76 00 65 00 3a 00 6e 00 6f 00 } //1 net user Administrator /active:no
		$a_01_6 = {2f 00 63 00 20 00 64 00 65 00 6c 00 20 00 2f 00 71 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 72 00 65 00 70 00 61 00 69 00 72 00 5c 00 2a 00 2e 00 2a 00 } //1 /c del /q %windir%\repair\*.*
		$a_01_7 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 73 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 69 00 63 00 71 00 } //1 cmd /c tskill /f icq
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}