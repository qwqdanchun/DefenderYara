
rule Backdoor_Win32_VB_PN{
	meta:
		description = "Backdoor:Win32/VB.PN,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 69 00 62 00 6c 00 6f 00 67 00 2e 00 63 00 6f 00 2e 00 6b 00 72 00 2f 00 6c 00 69 00 6e 00 6b 00 2e 00 74 00 78 00 74 00 } //02 00  http://hiblog.co.kr/link.txt
		$a_01_1 = {4e 00 61 00 76 00 69 00 67 00 61 00 74 00 65 00 32 00 } //02 00  Navigate2
		$a_01_2 = {6b 65 79 62 64 5f 65 76 65 6e 74 } //01 00  keybd_event
		$a_01_3 = {57 00 69 00 6e 00 48 00 74 00 74 00 70 00 2e 00 57 00 69 00 6e 00 48 00 74 00 74 00 70 00 52 00 65 00 71 00 75 00 65 00 73 00 74 00 2e 00 35 00 2e 00 31 00 } //02 00  WinHttp.WinHttpRequest.5.1
		$a_01_4 = {52 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 42 00 6f 00 64 00 79 00 } //00 00  ResponseBody
	condition:
		any of ($a_*)
 
}