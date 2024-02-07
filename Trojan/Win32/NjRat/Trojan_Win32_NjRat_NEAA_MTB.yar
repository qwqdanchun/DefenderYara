
rule Trojan_Win32_NjRat_NEAA_MTB{
	meta:
		description = "Trojan:Win32/NjRat.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {50 00 33 00 32 00 33 00 34 00 53 00 58 00 4c 00 51 00 } //05 00  P3234SXLQ
		$a_01_1 = {75 00 48 00 4f 00 72 00 4a 00 74 00 58 00 66 00 44 00 44 00 47 00 } //04 00  uHOrJtXfDDG
		$a_01_2 = {48 69 72 61 67 61 6e 61 } //01 00  Hiragana
		$a_01_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_4 = {56 6b 4b 65 79 53 63 61 6e 41 } //01 00  VkKeyScanA
		$a_01_5 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00  OpenProcess
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_7 = {49 73 57 6f 77 36 34 50 72 6f 63 65 73 73 } //00 00  IsWow64Process
	condition:
		any of ($a_*)
 
}