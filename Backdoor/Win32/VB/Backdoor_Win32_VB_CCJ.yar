
rule Backdoor_Win32_VB_CCJ{
	meta:
		description = "Backdoor:Win32/VB.CCJ,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {46 75 63 6b 20 74 68 65 20 6f 6e 65 20 77 68 6f 20 69 73 20 74 72 79 69 6e 67 20 74 6f 20 43 72 61 63 6b 20 74 68 69 73 20 41 70 70 6c 69 63 61 74 69 6f 6e 20 3a 44 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 5f 46 72 6f 6d 20 42 35 36 6d 78 20 21 } //1 Fuck the one who is trying to Crack this Application :D                     _From B56mx !
		$a_01_1 = {66 75 63 6b 20 79 61 20 62 6f 79 20 3a 29 29 } //1 fuck ya boy :))
		$a_01_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 4d 53 56 42 56 4d 36 30 2e 44 4c 4c 5c 33 } //1 C:\WINDOWS\system32\MSVBVM60.DLL\3
		$a_01_3 = {73 00 79 00 73 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 69 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 6c 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 3b 00 6e 00 65 00 74 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 3b 00 6e 00 65 00 74 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 3b 00 79 00 70 00 61 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 sysver.exe;sysinfo.exe;syslnfo.exe;syschost.exe;netcmd.exe;netconfig.exe;ypager.exe
		$a_01_4 = {7b 00 35 00 32 00 33 00 37 00 30 00 32 00 4b 00 4a 00 59 00 30 00 2d 00 59 00 4b 00 4e 00 35 00 4f 00 4b 00 2d 00 44 00 31 00 4b 00 4f 00 57 00 2d 00 46 00 34 00 39 00 54 00 38 00 2d 00 54 00 56 00 55 00 49 00 38 00 31 00 52 00 57 00 4d 00 31 00 34 00 31 00 7d 00 } //1 {523702KJY0-YKN5OK-D1KOW-F49T8-TVUI81RWM141}
		$a_01_5 = {7b 00 33 00 31 00 32 00 47 00 30 00 32 00 48 00 4a 00 4c 00 30 00 2d 00 51 00 54 00 4d 00 37 00 44 00 48 00 2d 00 41 00 34 00 59 00 30 00 38 00 2d 00 4e 00 45 00 44 00 46 00 34 00 2d 00 53 00 4a 00 4c 00 59 00 32 00 33 00 49 00 34 00 5a 00 31 00 30 00 31 00 7d 00 } //1 {312G02HJL0-QTM7DH-A4Y08-NEDF4-SJLY23I4Z101}
		$a_01_6 = {5c 00 54 00 4d 00 50 00 31 00 30 00 30 00 31 00 2e 00 74 00 6d 00 70 00 } //1 \TMP1001.tmp
		$a_01_7 = {39 00 36 00 36 00 30 00 2e 00 54 00 4d 00 50 00 } //1 9660.TMP
		$a_01_8 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 4c 00 61 00 62 00 } //1 SOFTWARE\KasperskyLab
		$a_01_9 = {6e 00 65 00 74 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 20 00 2f 00 41 00 44 00 44 00 20 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 73 00 20 00 } //1 net localgroup /ADD Administrators 
		$a_01_10 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 00 00 42 00 00 00 73 00 68 00 69 00 6d 00 67 00 76 00 77 00 2e 00 64 00 6c 00 6c 00 2c 00 49 00 6d 00 61 00 67 00 65 00 56 00 69 00 65 00 77 00 5f 00 46 00 75 00 6c 00 6c 00 73 00 63 00 72 00 65 00 65 00 6e 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}