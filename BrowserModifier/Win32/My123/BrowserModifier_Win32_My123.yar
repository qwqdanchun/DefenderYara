
rule BrowserModifier_Win32_My123{
	meta:
		description = "BrowserModifier:Win32/My123,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_01_0 = {25 73 26 70 69 64 3d 25 73 26 6d 69 64 3d 25 73 } //3 %s&pid=%s&mid=%s
		$a_01_1 = {25 73 3f 70 69 64 3d 25 73 26 6d 69 64 3d 25 73 } //3 %s?pid=%s&mid=%s
		$a_02_2 = {25 73 5c 52 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 5c 25 73 22 2c 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 53 68 65 6c 6c 5f 54 72 61 79 57 6e 64 00 00 00 53 6f 66 74 77 61 72 65 5c [0-09] 5c 55 70 64 61 74 65 00 [0-09] 00 7b 25 30 38 6c 58 2d 25 30 34 58 2d 25 30 34 78 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d } //3
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6d 79 31 32 33 2e 63 6f 6d 2f } //3 http://www.my123.com/
		$a_01_4 = {61 48 52 30 63 44 6f 76 4c } //3 aHR0cDovL
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_02_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3) >=12
 
}
rule BrowserModifier_Win32_My123_2{
	meta:
		description = "BrowserModifier:Win32/My123,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0a 00 00 "
		
	strings :
		$a_01_0 = {5c 53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 25 73 2e 73 79 73 } //3 \SystemRoot\system32\drivers\%s.sys
		$a_01_1 = {5c 53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 25 73 2e 64 6c 6c } //3 \SystemRoot\system32\%s.dll
		$a_01_2 = {25 25 73 79 73 74 65 6d 72 6f 6f 74 25 25 5c 73 79 73 74 65 6d 33 32 5c 52 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 25 73 79 73 74 65 6d 72 6f 6f 74 25 25 5c 73 79 73 74 65 6d 33 32 5c 25 73 2e 64 6c 6c 2c 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //5 %%systemroot%%\system32\Rundll32.exe %%systemroot%%\system32\%s.dll,DllUnregisterServer
		$a_01_3 = {25 25 73 79 73 74 65 6d 72 6f 6f 74 25 25 5c 73 79 73 74 65 6d 33 32 5c 52 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 25 73 79 73 74 65 6d 72 6f 6f 74 25 25 5c 73 79 73 74 65 6d 33 32 5c 25 73 2e 64 6c 6c 2c 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //5 %%systemroot%%\system32\Rundll32.exe %%systemroot%%\system32\%s.dll,DllCanUnloadNow
		$a_01_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6d 79 31 32 33 2e 63 6f 6d 2f } //5 http://www.my123.com/
		$a_01_5 = {5c 73 79 73 5c 6f 62 6a 66 72 65 5f 77 32 4b 5f 78 38 36 5c 69 33 38 36 5c 61 75 74 6f 6c 69 76 65 2e 70 64 62 } //10 \sys\objfre_w2K_x86\i386\autolive.pdb
		$a_00_6 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 6f 00 6e 00 63 00 65 00 } //3 \registry\machine\software\microsoft\windows\currentversion\runonce
		$a_00_7 = {53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //3 Start Page
		$a_00_8 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 } //3 \Software\Microsoft\Internet Explorer\Main
		$a_00_9 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 79 00 31 00 32 00 33 00 2e 00 63 00 6f 00 6d 00 2f 00 } //10 http://www.my123.com/
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*10+(#a_00_6  & 1)*3+(#a_00_7  & 1)*3+(#a_00_8  & 1)*3+(#a_00_9  & 1)*10) >=20
 
}