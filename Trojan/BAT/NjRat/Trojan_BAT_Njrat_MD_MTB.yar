
rule Trojan_BAT_Njrat_MD_MTB{
	meta:
		description = "Trojan:BAT/Njrat.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 07 6f 90 01 03 0a 17 73 90 01 03 0a 0c 08 02 16 02 8e 69 6f 90 01 03 0a 08 6f 90 01 03 0a 06 6f 90 01 03 0a 0d 09 2a 90 00 } //01 00 
		$a_01_1 = {73 74 6f 70 6d 65 } //01 00  stopme
		$a_01_2 = {4d 79 41 6e 74 69 50 72 6f 63 65 73 73 } //01 00  MyAntiProcess
		$a_01_3 = {4c 61 75 6e 63 68 5f 63 72 79 70 74 } //01 00  Launch_crypt
		$a_01_4 = {44 65 63 72 79 70 74 5f 46 69 6c 65 } //01 00  Decrypt_File
		$a_01_5 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //01 00  UnhookWindowsHookEx
		$a_01_6 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_7 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_8 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_9 = {53 75 73 70 65 6e 64 54 68 72 65 61 64 } //01 00  SuspendThread
		$a_01_10 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_12 = {53 74 61 72 74 53 6c 6f 77 6c 6f 72 69 73 } //01 00  StartSlowloris
		$a_01_13 = {67 65 74 5f 53 68 69 66 74 4b 65 79 44 6f 77 6e } //00 00  get_ShiftKeyDown
	condition:
		any of ($a_*)
 
}