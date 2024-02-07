
rule Trojan_Win32_Agent_gen_ABE{
	meta:
		description = "Trojan:Win32/Agent.gen!ABE,SIGNATURE_TYPE_PEHSTR_EXT,22 00 21 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //0a 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {72 75 6e 64 6c 6c 33 32 20 25 73 20 53 74 61 72 74 } //0a 00  rundll32 %s Start
		$a_01_2 = {25 73 5c 64 72 69 76 65 72 73 5c 25 73 2e 73 79 73 } //02 00  %s\drivers\%s.sys
		$a_01_3 = {52 73 73 6b 70 6c 6d } //01 00  Rsskplm
		$a_01_4 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //01 00  CreateServiceA
		$a_01_5 = {6c 69 76 65 2e 64 6c 6c } //00 00  live.dll
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Agent_gen_ABE_2{
	meta:
		description = "Trojan:Win32/Agent.gen!ABE,SIGNATURE_TYPE_PEHSTR_EXT,38 00 37 00 0a 00 00 1e 00 "
		
	strings :
		$a_01_0 = {6f 6c 77 6e 72 66 39 36 2e 64 6c 6c } //05 00  olwnrf96.dll
		$a_01_1 = {5c 25 73 2e 73 79 73 } //05 00  \%s.sys
		$a_01_2 = {25 73 5c 5c 64 72 69 76 65 72 73 } //05 00  %s\\drivers
		$a_01_3 = {25 73 5c 5c 25 73 2e 64 6c 6c } //05 00  %s\\%s.dll
		$a_01_4 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //05 00  CreateServiceA
		$a_00_5 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 5c 64 72 69 76 65 72 73 5c 5c } //01 00  c:\windows\system32\\drivers\\
		$a_01_6 = {6c 69 76 65 2e 64 6c 6c } //01 00  live.dll
		$a_01_7 = {63 61 74 63 6c 6f 67 64 2e 64 6c 6c } //01 00  catclogd.dll
		$a_01_8 = {73 74 61 74 65 2e 64 6c 6c } //01 00  state.dll
		$a_01_9 = {6c 69 76 65 2e 73 79 73 } //00 00  live.sys
	condition:
		any of ($a_*)
 
}