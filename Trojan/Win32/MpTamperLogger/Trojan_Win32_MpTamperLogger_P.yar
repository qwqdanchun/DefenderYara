
rule Trojan_Win32_MpTamperLogger_P{
	meta:
		description = "Trojan:Win32/MpTamperLogger.P,SIGNATURE_TYPE_CMDHSTR_EXT,4f 00 08 00 08 00 00 03 00 "
		
	strings :
		$a_02_0 = {72 00 65 00 67 00 90 02 08 20 00 90 02 10 61 00 64 00 64 00 20 00 90 00 } //03 00 
		$a_00_1 = {5c 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 77 00 6d 00 69 00 5c 00 61 00 75 00 74 00 6f 00 6c 00 6f 00 67 00 67 00 65 00 72 00 5c 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 61 00 70 00 69 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  \control\wmi\autologger\defenderapilogger
		$a_02_2 = {2f 00 76 00 20 00 90 02 08 73 00 74 00 61 00 72 00 74 00 90 00 } //01 00 
		$a_02_3 = {2f 00 76 00 20 00 90 02 08 65 00 6e 00 61 00 62 00 6c 00 65 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 90 00 } //01 00 
		$a_02_4 = {2f 00 64 00 20 00 90 02 04 30 00 90 00 } //01 00 
		$a_02_5 = {2f 00 64 00 20 00 90 02 04 32 00 90 00 } //01 00 
		$a_02_6 = {2f 00 64 00 20 00 90 02 04 33 00 90 00 } //01 00 
		$a_02_7 = {2f 00 64 00 20 00 90 02 04 34 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}