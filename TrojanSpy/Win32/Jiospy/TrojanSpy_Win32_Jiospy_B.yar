
rule TrojanSpy_Win32_Jiospy_B{
	meta:
		description = "TrojanSpy:Win32/Jiospy.B,SIGNATURE_TYPE_PEHSTR,19 00 19 00 0c 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 6a 69 61 6f 7a 68 75 } //10 http://jiaozhu
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //5 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {25 25 63 6f 6d 73 70 65 63 25 25 20 2f 63 20 25 73 20 25 73 } //1 %%comspec%% /c %s %s
		$a_01_3 = {40 65 63 68 6f 20 6f 66 66 } //1 @echo off
		$a_01_4 = {69 66 20 6e 6f 74 20 65 78 69 73 74 20 22 22 25 31 22 22 20 67 6f 74 6f 20 64 6f 6e 65 } //1 if not exist ""%1"" goto done
		$a_01_5 = {64 65 6c 20 2f 46 20 22 22 25 31 22 22 } //1 del /F ""%1""
		$a_01_6 = {64 65 6c 20 22 22 25 31 22 22 } //1 del ""%1""
		$a_01_7 = {67 6f 74 6f 20 73 74 61 72 74 } //1 goto start
		$a_01_8 = {64 65 6c 20 2f 46 20 25 74 65 6d 70 25 } //1 del /F %temp%
		$a_01_9 = {73 2e 62 61 74 } //1 s.bat
		$a_01_10 = {64 65 6c 20 25 74 65 6d 70 25 } //1 del %temp%
		$a_01_11 = {25 73 5c 72 73 2e 62 61 74 } //1 %s\rs.bat
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=25
 
}