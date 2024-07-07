
rule Backdoor_Win32_Visel_C{
	meta:
		description = "Backdoor:Win32/Visel.C,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 1d 00 00 "
		
	strings :
		$a_00_0 = {6d 64 2e 65 78 65 20 2f 63 20 22 25 73 22 } //1 md.exe /c "%s"
		$a_00_1 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //1 [Num Lock]
		$a_00_2 = {5b 44 6f 77 6e 5d } //1 [Down]
		$a_00_3 = {5b 52 69 67 68 74 5d } //1 [Right]
		$a_00_4 = {5b 4c 65 66 74 5d } //1 [Left]
		$a_00_5 = {5b 50 61 67 65 44 6f 77 6e 5d } //1 [PageDown]
		$a_00_6 = {5b 45 6e 64 5d } //1 [End]
		$a_00_7 = {5b 44 65 6c 5d } //1 [Del]
		$a_00_8 = {5b 50 61 67 65 55 70 5d } //1 [PageUp]
		$a_00_9 = {5b 48 6f 6d 65 5d } //1 [Home]
		$a_00_10 = {5b 49 6e 73 65 72 74 5d } //1 [Insert]
		$a_00_11 = {5b 53 63 72 6f 6c 6c 20 4c 6f 63 6b 5d } //1 [Scroll Lock]
		$a_00_12 = {5b 50 72 69 6e 74 20 53 63 72 65 65 6e 5d } //1 [Print Screen]
		$a_00_13 = {5b 57 49 4e 5d } //1 [WIN]
		$a_00_14 = {5b 43 54 52 4c 5d } //1 [CTRL]
		$a_00_15 = {5b 54 41 42 5d } //1 [TAB]
		$a_00_16 = {5b 46 31 32 5d } //1 [F12]
		$a_00_17 = {5b 46 31 31 5d } //1 [F11]
		$a_00_18 = {5b 46 31 30 5d } //1 [F10]
		$a_00_19 = {5b 45 53 43 5d } //1 [ESC]
		$a_00_20 = {3c 45 6e 74 65 72 3e } //1 <Enter>
		$a_00_21 = {3c 42 61 63 6b 3e } //1 <Back>
		$a_01_22 = {2d 2d 2d 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 2d 2d 2d } //1 ---Internet Explorer---
		$a_01_23 = {70 61 73 73 77 6f 72 44 } //1 passworD
		$a_00_24 = {73 76 63 68 6f 73 74 2e 65 78 65 } //1 svchost.exe
		$a_00_25 = {57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //1 Winlogon.exe
		$a_00_26 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //1 \Program Files\Internet Explorer\iexplore.exe
		$a_00_27 = {4d 00 79 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 } //1 My Capture Window
		$a_00_28 = {41 00 63 00 63 00 65 00 70 00 74 00 3a 00 20 00 2a 00 2f 00 2a 00 } //1 Accept: */*
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1+(#a_00_27  & 1)*1+(#a_00_28  & 1)*1) >=29
 
}