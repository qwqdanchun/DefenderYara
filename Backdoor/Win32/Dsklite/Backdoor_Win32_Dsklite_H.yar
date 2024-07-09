
rule Backdoor_Win32_Dsklite_H{
	meta:
		description = "Backdoor:Win32/Dsklite.H,SIGNATURE_TYPE_PEHSTR_EXT,39 00 37 00 08 00 00 "
		
	strings :
		$a_00_0 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 41 00 63 00 74 00 69 00 76 00 65 00 20 00 53 00 65 00 74 00 75 00 70 00 5c 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 20 00 43 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 5c 00 7b 00 34 00 34 00 42 00 42 00 41 00 38 00 35 00 35 00 2d 00 43 00 43 00 35 00 31 00 2d 00 31 00 31 00 43 00 46 00 2d 00 42 00 41 00 46 00 41 00 2d 00 30 00 30 00 42 00 42 00 30 00 30 00 42 00 36 00 30 00 31 00 37 00 42 00 7d 00 5c 00 53 00 74 00 75 00 62 00 50 00 61 00 74 00 68 00 } //10 HKEY_LOCAL_MACHINE\Software\Microsoft\Active Setup\Installed Components\{44BBA855-CC51-11CF-BAFA-00BB00B6017B}\StubPath
		$a_00_1 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4b 00 41 00 5a 00 41 00 41 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 69 00 72 00 } //10 HKEY_LOCAL_MACHINE\SOFTWARE\KAZAA\LocalContent\DownloadDir
		$a_00_2 = {5c 00 4b 00 65 00 72 00 6e 00 65 00 6c 00 2e 00 62 00 61 00 74 00 } //10 \Kernel.bat
		$a_00_3 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 55 00 70 00 5c 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 20 00 41 00 6e 00 74 00 69 00 2d 00 48 00 61 00 63 00 6b 00 65 00 72 00 2e 00 6c 00 6e 00 6b 00 } //10 C:\WINDOWS\Start Menu\Programs\StartUp\Kaspersky Anti-Hacker.lnk
		$a_00_4 = {44 00 65 00 6c 00 20 00 62 00 61 00 74 00 2e 00 62 00 61 00 74 00 } //10 Del bat.bat
		$a_02_5 = {41 00 2f 00 76 00 20 00 26 00 20 00 46 00 [0-10] 6c 00 6c 00 20 00 4b 00 69 00 6c 00 6c 00 69 00 6e 00 67 00 3a 00 } //5
		$a_00_6 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 70 00 2e 00 69 00 63 00 71 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 63 00 72 00 69 00 70 00 74 00 73 00 2f 00 57 00 57 00 50 00 4d 00 73 00 67 00 2e 00 64 00 6c 00 6c 00 3f 00 66 00 72 00 6f 00 6d 00 3d 00 } //1 http://wwp.icq.com/scripts/WWPMsg.dll?from=
		$a_00_7 = {46 00 61 00 6b 00 65 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 42 00 6f 00 64 00 79 00 3a 00 } //1 Fake Error Body:
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_02_5  & 1)*5+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=55
 
}