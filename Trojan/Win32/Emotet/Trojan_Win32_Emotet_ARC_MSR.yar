
rule Trojan_Win32_Emotet_ARC_MSR{
	meta:
		description = "Trojan:Win32/Emotet.ARC!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 69 00 74 00 74 00 42 00 75 00 6c 00 6c 00 27 00 73 00 20 00 44 00 69 00 72 00 65 00 63 00 74 00 6f 00 72 00 79 00 20 00 57 00 61 00 74 00 63 00 68 00 64 00 6f 00 67 00 } //01 00  PittBull's Directory Watchdog
		$a_01_1 = {54 00 68 00 69 00 73 00 20 00 74 00 6f 00 6f 00 6c 00 20 00 69 00 73 00 20 00 66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 20 00 66 00 72 00 65 00 65 00 77 00 61 00 72 00 65 00 20 00 21 00 21 00 21 00 } //01 00  This tool is fucking freeware !!!
		$a_01_2 = {43 00 6f 00 70 00 79 00 20 00 6d 00 65 00 20 00 2d 00 20 00 49 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 74 00 72 00 61 00 76 00 65 00 6c 00 20 00 27 00 72 00 6f 00 75 00 6e 00 64 00 20 00 74 00 68 00 65 00 20 00 77 00 6f 00 72 00 6c 00 64 00 2e 00 2e 00 2e 00 } //01 00  Copy me - I want to travel 'round the world...
		$a_01_3 = {41 66 78 4f 6c 64 57 6e 64 50 72 6f 63 34 32 33 } //01 00  AfxOldWndProc423
		$a_01_4 = {72 00 63 00 4f 00 4f 00 6f 00 62 00 68 00 4b 00 6a 00 6e 00 52 00 4b 00 66 00 42 00 74 00 44 00 4a 00 78 00 42 00 53 00 54 00 72 00 6f 00 69 00 64 00 55 00 } //00 00  rcOOobhKjnRKfBtDJxBSTroidU
	condition:
		any of ($a_*)
 
}