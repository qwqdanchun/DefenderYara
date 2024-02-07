
rule Backdoor_Win32_Blohi_D{
	meta:
		description = "Backdoor:Win32/Blohi.D,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run
		$a_01_1 = {57 00 69 00 6e 00 48 00 74 00 74 00 70 00 2e 00 57 00 69 00 6e 00 48 00 74 00 74 00 70 00 52 00 65 00 71 00 75 00 65 00 73 00 74 00 2e 00 35 00 } //01 00  WinHttp.WinHttpRequest.5
		$a_01_2 = {5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 20 00 2f 00 76 00 20 00 22 00 44 00 6f 00 4e 00 6f 00 74 00 41 00 6c 00 6c 00 6f 00 77 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 73 00 22 00 20 00 2f 00 74 00 } //01 00  \FirewallPolicy\StandardProfile /v "DoNotAllowExceptions" /t
		$a_01_3 = {5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 4c 00 69 00 73 00 74 00 20 00 2f 00 76 00 20 00 } //00 00  \FirewallPolicy\StandardProfile\AuthorizedApplications\List /v 
	condition:
		any of ($a_*)
 
}