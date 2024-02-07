
rule Trojan_Win32_Qakbot_DF{
	meta:
		description = "Trojan:Win32/Qakbot.DF,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 28 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {65 00 73 00 65 00 6e 00 74 00 75 00 74 00 6c 00 } //0a 00  esentutl
		$a_00_1 = {56 00 30 00 31 00 } //0a 00  V01
		$a_00_2 = {20 00 2f 00 72 00 } //01 00   /r
		$a_00_3 = {20 00 2f 00 6c 00 } //01 00   /l
		$a_00_4 = {20 00 2f 00 73 00 } //01 00   /s
		$a_00_5 = {20 00 2f 00 64 00 } //0a 00   /d
		$a_00_6 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 57 00 65 00 62 00 43 00 61 00 63 00 68 00 65 00 } //00 00  AppData\Local\Microsoft\Windows\WebCache
	condition:
		any of ($a_*)
 
}