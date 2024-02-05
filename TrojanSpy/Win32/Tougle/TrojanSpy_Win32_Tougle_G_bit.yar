
rule TrojanSpy_Win32_Tougle_G_bit{
	meta:
		description = "TrojanSpy:Win32/Tougle.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 4c 24 10 84 c9 8a 0c 28 74 0c 8a 54 28 01 c0 e9 04 c0 e2 04 0a ca 88 4c 24 28 40 c7 44 24 18 00 00 00 00 8b 7c 24 10 8b 54 24 2c 81 e7 ff 00 00 00 2b d7 3b c2 0f 83 b9 02 00 00 } //01 00 
		$a_01_1 = {c7 02 6b 65 72 6e c7 45 38 65 6c 33 32 c7 45 3c 2e 64 6c 6c ff 55 00 89 45 54 eb 35 } //01 00 
		$a_03_2 = {6a 02 6a 00 6a 00 ff 15 90 01 03 00 8b f0 85 f6 74 36 6a 00 6a 00 6a 00 6a 00 8d 54 24 24 6a 00 52 6a 01 6a 02 6a 10 68 ff 01 0f 00 68 90 01 03 00 68 90 01 03 00 56 ff 15 90 01 03 00 90 00 } //01 00 
		$a_01_3 = {00 77 74 61 25 64 00 } //01 00 
		$a_01_4 = {00 00 2f 00 63 00 68 00 6b 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}