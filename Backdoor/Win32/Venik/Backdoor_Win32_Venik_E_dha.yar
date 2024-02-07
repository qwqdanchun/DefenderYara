
rule Backdoor_Win32_Venik_E_dha{
	meta:
		description = "Backdoor:Win32/Venik.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 ffffffff ffffffff "
		
	strings :
		$a_01_0 = {63 61 63 6c 73 2e 65 78 65 20 63 3a 5c } //fe ff  cacls.exe c:\
		$a_01_1 = {2f 73 65 61 72 63 68 3f 68 6c 3d 65 6e 26 71 } //01 00  /search?hl=en&q
		$a_00_2 = {5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b } //01 00  \System32\svchost.exe -k
		$a_01_3 = {00 49 6e 73 74 61 6c 6c 00 52 75 6e } //01 00  䤀獮慴汬刀湵
		$a_03_4 = {2e 50 41 58 00 00 00 00 90 01 08 2e 50 41 44 00 90 00 } //01 00 
		$a_03_5 = {3d 00 00 00 21 0f 87 90 01 04 0f 84 90 01 04 05 00 00 00 e0 83 90 00 } //01 00 
		$a_03_6 = {3d 02 00 00 32 0f 87 90 01 04 0f 84 90 01 04 3d 03 00 00 31 90 00 } //01 00 
		$a_01_7 = {8b 44 24 08 8a 08 32 ca 02 ca 88 08 40 4e 75 f4 } //00 00 
		$a_00_8 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}