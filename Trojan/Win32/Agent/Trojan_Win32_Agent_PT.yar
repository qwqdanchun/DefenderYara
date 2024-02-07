
rule Trojan_Win32_Agent_PT{
	meta:
		description = "Trojan:Win32/Agent.PT,SIGNATURE_TYPE_PEHSTR,0d 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6d 73 6e 6d 73 67 72 2e 65 78 65 00 49 6e 73 74 61 6c 6c 61 74 69 6f 6e 44 69 72 65 63 74 6f 72 79 00 00 00 5c 4d 53 4e 4d 65 73 73 65 6e 67 65 72 5c 00 00 53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 48 54 54 50 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 00 00 00 00 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_01_1 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_2 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //01 00  RegSetValueExA
		$a_01_3 = {52 65 67 43 72 65 61 74 65 4b 65 79 45 78 41 } //00 00  RegCreateKeyExA
	condition:
		any of ($a_*)
 
}