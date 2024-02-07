
rule Backdoor_Win32_Plugx_L_dha{
	meta:
		description = "Backdoor:Win32/Plugx.L!dha,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {00 58 2d 53 6e 00 } //05 00  堀匭n
		$a_01_1 = {00 58 2d 53 69 7a 65 00 } //05 00  堀匭穩e
		$a_01_2 = {00 58 2d 53 65 73 73 69 6f 6e 00 } //01 00 
		$a_01_3 = {43 00 58 00 53 00 61 00 6c 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 3a 00 53 00 61 00 6c 00 45 00 6e 00 61 00 62 00 6c 00 65 00 } //01 00  CXSalvation::SalEnable
		$a_01_4 = {5c 00 5c 00 2e 00 5c 00 50 00 49 00 50 00 45 00 5c 00 52 00 55 00 4e 00 5f 00 41 00 54 00 5f 00 53 00 45 00 53 00 53 00 49 00 4f 00 4e 00 28 00 25 00 64 00 29 00 } //00 00  \\.\PIPE\RUN_AT_SESSION(%d)
		$a_00_5 = {78 a7 00 00 03 00 03 00 06 00 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Plugx_L_dha_2{
	meta:
		description = "Backdoor:Win32/Plugx.L!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {b9 58 56 00 00 8b d1 66 3b 10 74 07 6a 0f e9 7c 02 00 00 8b 70 3c 03 f0 39 0e 74 07 } //01 00 
		$a_01_1 = {81 78 1c 18 00 1a 00 74 08 8b 00 85 c0 75 f1 } //01 00 
		$a_01_2 = {0f b7 00 25 ff 0f 00 00 03 01 03 c7 89 45 ec 33 c0 89 45 f4 8b c7 99 8b f8 2b 7e 34 } //01 00 
		$a_01_3 = {c1 ea 18 32 54 0e 04 8b 4d 08 c1 e9 10 32 d1 8b 4d 08 c1 e9 08 32 d1 32 55 08 88 14 37 } //01 00 
		$a_01_4 = {8b 46 04 c6 00 e9 8b 46 04 88 58 01 8b 4e 04 8b c3 c1 e8 08 } //01 00 
		$a_01_5 = {80 7c 38 14 a3 75 07 80 7c 38 19 e8 74 0f } //00 00 
	condition:
		any of ($a_*)
 
}