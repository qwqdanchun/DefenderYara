
rule Trojan_Win32_TrickBot_AR_MSR{
	meta:
		description = "Trojan:Win32/TrickBot.AR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 00 6e 00 73 00 63 00 72 00 65 00 65 00 6e 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 2e 00 45 00 58 00 45 00 } //01 00  OnscreenKeyboard.EXE
		$a_01_1 = {48 00 69 00 64 00 65 00 20 00 74 00 68 00 65 00 20 00 6f 00 6e 00 73 00 63 00 72 00 65 00 65 00 6e 00 20 00 6b 00 61 00 79 00 62 00 6f 00 61 00 72 00 64 00 2b 00 54 00 65 00 72 00 6d 00 69 00 6e 00 61 00 74 00 65 00 20 00 74 00 68 00 65 00 20 00 4f 00 6e 00 73 00 63 00 72 00 65 00 65 00 6e 00 20 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  Hide the onscreen kayboard+Terminate the Onscreen Keyboard application
		$a_01_2 = {46 54 43 70 4f 68 79 72 48 61 68 54 46 } //01 00  FTCpOhyrHahTF
		$a_01_3 = {4f 00 6e 00 73 00 63 00 72 00 65 00 65 00 6e 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 4d 00 46 00 43 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  OnscreenKeyboard MFC Application
		$a_01_4 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //00 00  GetProcAddress
	condition:
		any of ($a_*)
 
}