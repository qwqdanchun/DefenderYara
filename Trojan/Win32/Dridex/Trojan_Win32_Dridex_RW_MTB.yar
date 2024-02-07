
rule Trojan_Win32_Dridex_RW_MTB{
	meta:
		description = "Trojan:Win32/Dridex.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {55 6e 68 6f 6f 6b 57 69 6e 45 76 65 6e 74 } //01 00  UnhookWinEvent
		$a_81_1 = {43 72 79 70 74 49 6d 70 6f 72 74 50 75 62 6c 69 63 4b 65 79 49 6e 66 6f } //01 00  CryptImportPublicKeyInfo
		$a_81_2 = {58 69 77 61 73 } //01 00  Xiwas
		$a_81_3 = {45 53 45 4e 54 2e 64 6c 6c } //01 00  ESENT.dll
		$a_81_4 = {35 33 66 72 6f 6d 59 47 74 68 65 74 68 65 } //01 00  53fromYGthethe
		$a_81_5 = {45 53 20 41 50 50 20 45 5f } //01 00  ES APP E_
		$a_81_6 = {65 6c 66 20 45 58 } //00 00  elf EX
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dridex_RW_MTB_2{
	meta:
		description = "Trojan:Win32/Dridex.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {68 8c 10 00 00 ff 15 90 01 04 03 05 90 01 04 8b 15 90 01 04 03 15 90 01 04 8b 0d 90 01 04 8a 04 01 88 02 8b 0d 90 01 04 83 c1 01 89 0d 90 00 } //01 00 
		$a_81_1 = {47 65 74 53 79 73 74 65 6d 49 6e 66 6f } //01 00  GetSystemInfo
		$a_81_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_3 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //01 00  GetStartupInfoA
		$a_81_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //01 00  ShellExecuteExA
		$a_81_5 = {4d 61 70 56 69 72 74 75 61 6c 4b 65 79 41 } //0a 00  MapVirtualKeyA
		$a_81_6 = {51 77 74 73 7a 41 63 53 4a 41 4d 72 54 75 4a 78 73 70 66 33 63 72 4e 54 64 46 4e 43 44 71 7a 62 4f 4d 49 6c 71 6b 42 34 57 47 30 67 79 67 56 64 } //00 00  QwtszAcSJAMrTuJxspf3crNTdFNCDqzbOMIlqkB4WG0gygVd
	condition:
		any of ($a_*)
 
}