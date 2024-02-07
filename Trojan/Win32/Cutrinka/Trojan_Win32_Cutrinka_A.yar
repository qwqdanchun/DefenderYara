
rule Trojan_Win32_Cutrinka_A{
	meta:
		description = "Trojan:Win32/Cutrinka.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 72 76 69 63 65 20 48 6f 73 74 20 4d 61 6e 61 67 65 72 } //01 00  Service Host Manager
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //01 00  C:\Program Files\Microsoft Visual Studio\VB98\VB6.OLB
		$a_01_2 = {22 4b 41 54 52 49 4e 41 20 56 69 72 75 73 22 21 } //01 00  "KATRINA Virus"!
		$a_01_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  \System32\shutdown.exe
		$a_01_4 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 65 00 76 00 63 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \system32\sevcst.exe
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		any of ($a_*)
 
}