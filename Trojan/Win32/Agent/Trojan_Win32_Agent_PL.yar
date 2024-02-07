
rule Trojan_Win32_Agent_PL{
	meta:
		description = "Trojan:Win32/Agent.PL,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 73 00 79 00 73 00 64 00 74 00 2e 00 73 00 79 00 73 00 } //01 00  \SystemRoot\system32\drivers\sysdt.sys
		$a_01_1 = {52 49 4e 47 30 45 58 45 00 00 00 00 74 65 6d 70 64 69 72 2e 65 78 65 00 52 49 4e 47 30 42 49 4e 00 00 00 00 52 49 4e 47 30 00 00 00 25 73 5c 64 72 69 76 65 72 73 5c 25 73 } //01 00 
		$a_01_2 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //01 00  KeServiceDescriptorTable
		$a_01_3 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  ZwQuerySystemInformation
		$a_01_4 = {6e 74 64 6c 6c 2e 64 6c 6c } //01 00  ntdll.dll
		$a_01_5 = {49 6f 43 72 65 61 74 65 46 69 6c 65 } //00 00  IoCreateFile
	condition:
		any of ($a_*)
 
}