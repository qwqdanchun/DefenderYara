
rule Trojan_Win32_Agent_EL{
	meta:
		description = "Trojan:Win32/Agent.EL,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {64 65 6c 73 65 6c 66 2e 62 61 74 00 64 33 32 64 78 39 2e 73 79 73 } //04 00 
		$a_01_1 = {53 68 65 6c 6c 00 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //02 00 
		$a_01_2 = {6d 62 2e 61 73 70 3f 61 3d 31 26 63 3d } //02 00  mb.asp?a=1&c=
		$a_01_3 = {25 73 25 73 00 78 79 6d 61 69 6e 2e 62 69 6e } //01 00 
		$a_01_4 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 41 } //01 00  HttpSendRequestA
		$a_01_5 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //00 00  InternetConnectA
	condition:
		any of ($a_*)
 
}