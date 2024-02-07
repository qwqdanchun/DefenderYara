
rule Trojan_Win32_Aenjaris_ROC_MTB{
	meta:
		description = "Trojan:Win32/Aenjaris.ROC!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 2f 00 74 00 6d 00 70 00 2e 00 65 00 72 00 72 00 } //01 00  ./tmp.err
		$a_01_1 = {77 00 6d 00 69 00 69 00 6e 00 74 00 65 00 67 00 72 00 61 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  wmiintegrator.exe
		$a_01_2 = {77 00 6d 00 69 00 68 00 6f 00 73 00 74 00 77 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  wmihostwin.exe
		$a_01_3 = {77 00 6d 00 69 00 6d 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  wmimic.exe
		$a_01_4 = {77 00 6d 00 69 00 73 00 65 00 63 00 75 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  wmisecure.exe
		$a_01_5 = {6e 00 6f 00 63 00 72 00 65 00 61 00 74 00 65 00 66 00 6f 00 6c 00 64 00 65 00 72 00 } //01 00  nocreatefolder
		$a_01_6 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  svchost.exe
		$a_01_7 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  explorer.exe
		$a_01_8 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  services.exe
		$a_01_9 = {2e 00 2a 00 28 00 3f 00 3d 00 5b 00 20 00 5d 00 7b 00 31 00 2c 00 7d 00 64 00 69 00 73 00 63 00 6f 00 7c 00 64 00 69 00 73 00 6b 00 28 00 3f 00 3a 00 5b 00 5c 00 72 00 5c 00 6e 00 20 00 5d 00 7c 00 24 00 29 00 29 00 } //01 00  .*(?=[ ]{1,}disco|disk(?:[\r\n ]|$))
		$a_01_10 = {5c 00 5b 00 49 00 44 00 5c 00 5d 00 28 00 2e 00 2a 00 29 00 3f 00 5c 00 5b 00 5c 00 2f 00 49 00 44 00 5c 00 5d 00 } //01 00  \[ID\](.*)?\[\/ID\]
		$a_01_11 = {5c 00 5b 00 43 00 4f 00 4d 00 4d 00 41 00 4e 00 44 00 5c 00 5d 00 28 00 2e 00 2a 00 29 00 3f 00 5c 00 5b 00 5c 00 2f 00 43 00 4f 00 4d 00 4d 00 41 00 4e 00 44 00 5c 00 5d 00 } //01 00  \[COMMAND\](.*)?\[\/COMMAND\]
		$a_01_12 = {5c 00 5b 00 45 00 58 00 45 00 43 00 5f 00 45 00 58 00 45 00 5c 00 5d 00 28 00 2e 00 2a 00 29 00 3f 00 5c 00 5b 00 5c 00 2f 00 45 00 58 00 45 00 43 00 5f 00 45 00 58 00 45 00 5c 00 5d 00 } //01 00  \[EXEC_EXE\](.*)?\[\/EXEC_EXE\]
		$a_01_13 = {75 00 6e 00 6b 00 69 00 6c 00 61 00 62 00 6c 00 65 00 } //00 00  unkilable
	condition:
		any of ($a_*)
 
}