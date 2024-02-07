
rule Trojan_Win32_Rootkit_D{
	meta:
		description = "Trojan:Win32/Rootkit.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {48 45 4c 4f 57 4f 4c 44 } //01 00  HELOWOLD
		$a_00_1 = {74 00 73 00 72 00 49 00 64 00 65 00 } //01 00  tsrIde
		$a_00_2 = {53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 76 00 73 00 5f 00 6d 00 6f 00 6e 00 2e 00 64 00 6c 00 6c 00 } //01 00  SystemRoot\System32\vs_mon.dll
		$a_00_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 39 00 61 00 61 00 61 00 2e 00 63 00 6f 00 6d 00 } //01 00  http://www.9aaa.com
		$a_01_4 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Rootkit_D_2{
	meta:
		description = "Trojan:Win32/Rootkit.D,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 52 65 64 6f } //01 00  if exist %1 goto Redo
		$a_01_1 = {64 65 6c 20 2f 66 20 2f 71 20 25 30 } //01 00  del /f /q %0
		$a_01_2 = {25 73 5c 64 72 69 76 65 72 73 5c 25 73 2e 73 79 73 } //01 00  %s\drivers\%s.sys
		$a_01_3 = {25 73 20 42 75 73 20 45 78 74 65 6e 64 65 72 } //01 00  %s Bus Extender
		$a_01_4 = {25 73 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 } //01 00  %s\CurrentControlSet\Services\%s
		$a_01_5 = {74 73 72 49 64 65 } //01 00  tsrIde
		$a_01_6 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 } //01 00  %c%c%c%c%c%c%c%c
		$a_01_7 = {25 73 5c 6e 74 64 6c 6c 2e 64 6c 6c } //01 00  %s\ntdll.dll
		$a_01_8 = {49 44 45 20 4d 69 6e 69 50 6f 72 74 } //01 00  IDE MiniPort
		$a_01_9 = {48 45 4c 4f 57 4f 4c 44 } //00 00  HELOWOLD
	condition:
		any of ($a_*)
 
}