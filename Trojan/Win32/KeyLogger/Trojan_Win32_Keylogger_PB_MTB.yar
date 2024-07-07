
rule Trojan_Win32_Keylogger_PB_MTB{
	meta:
		description = "Trojan:Win32/Keylogger.PB!MTB,SIGNATURE_TYPE_PEHSTR,1b 00 1b 00 0d 00 00 "
		
	strings :
		$a_01_0 = {45 00 6d 00 61 00 69 00 6c 00 53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //20 EmailSendingKeylogger.exe
		$a_01_1 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 6b 00 61 00 20 00 44 00 61 00 73 00 74 00 65 00 20 00 50 00 65 00 79 00 6b 00 72 00 64 00 20 00 4c 00 61 00 } //20 Keyloggerka Daste Peykrd La
		$a_01_2 = {4b 00 65 00 79 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 53 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 61 00 74 00 } //20 KeyLogger Started at
		$a_01_3 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 48 00 61 00 73 00 20 00 42 00 65 00 6e 00 20 00 53 00 74 00 61 00 72 00 74 00 20 00 41 00 74 00 } //20 Keylogger Has Ben Start At
		$a_01_4 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 6b 00 61 00 20 00 48 00 61 00 73 00 20 00 42 00 65 00 6e 00 20 00 53 00 74 00 61 00 72 00 74 00 20 00 41 00 74 00 } //20 Keyloggerka Has Ben Start At
		$a_01_5 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2f 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //20 Keylogger/Keylogger.exe
		$a_01_6 = {41 00 72 00 74 00 69 00 73 00 74 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 62 00 79 00 20 00 62 00 61 00 6b 00 68 00 63 00 68 00 61 00 } //20 ArtisteKeylogger by bakhcha
		$a_01_7 = {73 00 6d 00 74 00 70 00 2e 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //5 smtp.gmail.com
		$a_01_8 = {73 00 6d 00 74 00 70 00 2e 00 6f 00 66 00 66 00 69 00 63 00 65 00 33 00 36 00 35 00 2e 00 63 00 6f 00 6d 00 } //5 smtp.office365.com
		$a_01_9 = {73 65 74 5f 6b 65 79 54 69 6d 65 72 } //1 set_keyTimer
		$a_01_10 = {73 65 74 5f 65 6d 61 69 6c 54 69 6d 65 72 } //1 set_emailTimer
		$a_01_11 = {4e 65 74 77 6f 72 6b 43 72 65 64 65 6e 74 69 61 6c } //1 NetworkCredential
		$a_01_12 = {67 65 74 5f 4b 65 79 62 6f 61 72 64 } //1 get_Keyboard
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*20+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20+(#a_01_5  & 1)*20+(#a_01_6  & 1)*20+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=27
 
}