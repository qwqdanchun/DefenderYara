
rule Trojan_Win32_Kilim_D{
	meta:
		description = "Trojan:Win32/Kilim.D,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0e 00 00 "
		
	strings :
		$a_01_0 = {25 41 5f 54 65 6d 70 25 5c 43 68 72 6f 6d 65 50 72 65 66 2e 74 78 74 } //1 %A_Temp%\ChromePref.txt
		$a_01_1 = {25 41 5f 54 65 6d 70 25 5c 59 61 6e 64 65 78 50 72 65 66 2e 74 78 74 } //1 %A_Temp%\YandexPref.txt
		$a_01_2 = {25 41 5f 54 65 6d 70 25 5c 4f 70 65 72 61 50 72 65 66 2e 74 78 74 } //1 %A_Temp%\OperaPref.txt
		$a_03_3 = {30 30 30 72 61 73 67 65 6c 65 6b 6c 61 73 6f 72 30 30 30 [0-03] 25 72 61 73 67 65 6c 65 6b 6c 61 73 6f 72 25 } //1
		$a_01_4 = {25 41 5f 41 70 70 44 61 74 61 25 5c 69 6e 73 74 61 6c 6c 5f 62 72 6f 77 73 65 72 2e 65 78 65 } //1 %A_AppData%\install_browser.exe
		$a_01_5 = {52 65 67 45 78 52 65 70 6c 61 63 65 28 43 68 72 6f 6d 65 50 72 65 66 2c 20 22 5c 5c 5c 5c } //1 RegExReplace(ChromePref, "\\\\
		$a_01_6 = {28 6f 70 65 72 61 20 3d 20 31 29 } //1 (opera = 1)
		$a_01_7 = {54 77 61 69 6e 73 5f 36 34 } //1 Twains_64
		$a_02_8 = {2f 63 72 78 [0-03] 2e 7a 69 70 00 } //1
		$a_03_9 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e [0-31] 25 72 65 67 70 61 74 68 25 } //1
		$a_03_10 = {5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d [0-03] 45 6e 61 62 6c 65 4c 55 41 [0-03] 30 } //1
		$a_01_11 = {22 73 68 65 6c 6c 33 32 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 22 2c 20 75 69 6e 74 2c 20 30 2c 20 73 74 72 2c 20 22 52 75 6e 41 73 22 } //1 "shell32\ShellExecute", uint, 0, str, "RunAs"
		$a_01_12 = {25 41 5f 41 70 70 64 61 74 61 25 5c 66 6c 61 73 68 2e 78 70 69 } //1 %A_Appdata%\flash.xpi
		$a_01_13 = {2b 53 48 00 25 41 5f 41 70 70 44 61 74 61 25 5c } //1 匫H䄥䅟灰慄慴尥
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_02_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=10
 
}