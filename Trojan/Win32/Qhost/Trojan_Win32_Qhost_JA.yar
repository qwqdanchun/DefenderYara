
rule Trojan_Win32_Qhost_JA{
	meta:
		description = "Trojan:Win32/Qhost.JA,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {40 65 63 68 6f 20 6f 66 66 0d 0a 65 63 68 6f 20 90 02 50 3e 3e 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //01 00 
		$a_01_1 = {73 74 61 72 74 20 68 74 74 70 3a 2f 2f } //01 00  start http://
		$a_01_2 = {64 65 6c 20 22 00 5c 00 22 00 6f 70 65 6e 00 65 63 68 6f 20 3e 20 22 } //01 00 
		$a_01_3 = {2e 62 61 74 } //01 00  .bat
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //01 00  ShellExecuteExA
		$a_01_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_6 = {43 72 65 61 74 65 50 69 70 65 } //01 00  CreatePipe
		$a_01_7 = {44 65 6c 65 74 65 46 69 6c 65 41 } //01 00  DeleteFileA
		$a_01_8 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //00 00  CreateProcessA
	condition:
		any of ($a_*)
 
}