
rule TrojanDropper_Win32_Witkinat_A{
	meta:
		description = "TrojanDropper:Win32/Witkinat.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 7c 03 ff 90 01 01 75 09 c7 45 90 01 01 02 00 00 00 eb 07 c7 45 90 01 01 03 00 00 00 8b 45 0c 50 53 90 00 } //01 00 
		$a_03_1 = {f7 fd 8a 82 90 01 04 8b 16 8a 14 0a 32 c2 8b 16 88 04 0a 41 4b 75 e4 e9 90 00 } //01 00 
		$a_03_2 = {2d 6e 6f 68 6f 6d 65 00 69 65 78 70 6c 6f 72 65 90 02 05 6f 70 65 6e 90 00 } //01 00 
		$a_03_3 = {4c 75 13 83 7d f8 02 75 17 8d 85 90 01 04 e8 90 01 04 eb 0a 8d 45 f4 8b d7 e8 90 00 } //01 00 
		$a_03_4 = {eb 04 80 33 90 01 01 43 81 fb 90 01 04 75 f4 6a 00 68 90 01 04 6a 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}