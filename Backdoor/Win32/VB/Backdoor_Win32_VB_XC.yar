
rule Backdoor_Win32_VB_XC{
	meta:
		description = "Backdoor:Win32/VB.XC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6b 00 69 00 64 00 64 00 69 00 65 00 20 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 } //01 00  Skiddie Message Flood
		$a_01_1 = {41 00 74 00 74 00 65 00 6d 00 70 00 74 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 6b 00 69 00 6c 00 6c 00 20 00 63 00 3a 00 5c 00 70 00 72 00 6f 00 67 00 72 00 61 00 7e 00 31 00 5c 00 6d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 5c 00 6d 00 73 00 6d 00 73 00 67 00 73 00 2e 00 65 00 78 00 65 00 21 00 } //01 00  Attempting to kill c:\progra~1\messenger\msmsgs.exe!
		$a_01_2 = {53 00 68 00 65 00 6c 00 6c 00 5f 00 54 00 72 00 61 00 79 00 57 00 6e 00 64 00 } //01 00  Shell_TrayWnd
		$a_01_3 = {48 00 44 00 46 00 4c 00 4f 00 4f 00 44 00 } //00 00  HDFLOOD
	condition:
		any of ($a_*)
 
}