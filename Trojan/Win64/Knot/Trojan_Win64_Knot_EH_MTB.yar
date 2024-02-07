
rule Trojan_Win64_Knot_EH_MTB{
	meta:
		description = "Trojan:Win64/Knot.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 73 70 6f 6f 6c 5c 64 72 69 76 65 72 73 5c 63 6f 6c 6f 72 5c } //01 00  Windows\system32\spool\drivers\color\
		$a_01_1 = {53 75 73 43 72 65 61 74 65 46 69 6c 65 52 65 74 72 79 49 66 53 68 61 72 69 6e 67 56 69 6f 6c 61 74 69 6f 6e } //01 00  SusCreateFileRetryIfSharingViolation
		$a_01_2 = {53 00 55 00 53 00 20 00 43 00 6c 00 69 00 65 00 6e 00 74 00 20 00 50 00 72 00 6f 00 78 00 79 00 20 00 41 00 75 00 74 00 68 00 65 00 6e 00 74 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 } //01 00  SUS Client Proxy Authentication Credentials
		$a_01_3 = {77 00 75 00 61 00 75 00 73 00 65 00 72 00 76 00 } //01 00  wuauserv
		$a_01_4 = {77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 55 00 70 00 64 00 61 00 74 00 65 00 5c 00 54 00 65 00 73 00 74 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 } //01 00  ws\CurrentVersion\WindowsUpdate\Test\Policies
		$a_01_5 = {49 00 73 00 50 00 6f 00 6c 00 69 00 63 00 79 00 4f 00 76 00 65 00 72 00 72 00 69 00 64 00 65 00 41 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 } //01 00  IsPolicyOverrideAllowed
		$a_01_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 70 00 70 00 50 00 75 00 62 00 6c 00 69 00 73 00 68 00 65 00 72 00 } //01 00  DisableAppPublisher
		$a_01_7 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 55 00 70 00 64 00 61 00 74 00 65 00 4f 00 6e 00 6c 00 69 00 6e 00 65 00 52 00 65 00 76 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  DisableWindowsUpdateOnlineRevocation
		$a_01_8 = {77 75 61 70 69 2e 70 64 62 } //01 00  wuapi.pdb
		$a_01_9 = {31 2e 33 2e 36 2e 31 2e 34 2e 31 2e 33 31 31 2e 37 32 2e 31 2e 31 } //00 00  1.3.6.1.4.1.311.72.1.1
	condition:
		any of ($a_*)
 
}