
rule TrojanSpy_Win32_Banker_ALS{
	meta:
		description = "TrojanSpy:Win32/Banker.ALS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {0f b7 44 70 fe 33 c3 89 45 e4 3b 7d e4 7c 0f 8b 45 e4 05 ff 00 00 00 2b c7 89 45 e4 eb 03 } //01 00 
		$a_01_1 = {46 00 65 00 61 00 74 00 75 00 72 00 65 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 46 00 45 00 41 00 54 00 55 00 52 00 45 00 5f 00 45 00 4e 00 41 00 42 00 4c 00 45 00 5f 00 53 00 43 00 52 00 49 00 50 00 54 00 5f 00 50 00 41 00 53 00 54 00 45 00 5f 00 } //01 00 
		$a_01_2 = {5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 58 00 54 00 5c 00 43 00 4c 00 53 00 49 00 44 00 5c 00 00 00 } //01 00 
		$a_01_3 = {5c 00 5f 00 4d 00 79 00 42 00 48 00 4f 00 5c 00 75 00 50 00 72 00 69 00 6e 00 63 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}