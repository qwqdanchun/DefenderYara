
rule TrojanSpy_Win32_Banker_AOO{
	meta:
		description = "TrojanSpy:Win32/Banker.AOO,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {e9 34 02 00 00 83 ee 01 72 04 74 11 eb 1c 8d 45 f4 ba 90 01 04 e8 90 01 04 eb 0d 8d 45 f4 ba 90 01 04 e8 90 01 04 8d 45 f8 90 00 } //01 00 
		$a_03_1 = {8d 45 b4 50 33 c9 ba 90 01 04 66 b8 44 00 e8 90 01 04 8b 45 b4 8d 55 b8 e8 90 01 04 8b 55 b8 8d 45 e8 e8 90 01 04 6a 00 8d 45 9c 50 33 c9 ba 90 01 04 66 b8 44 00 e8 90 01 04 8b 55 9c 8d 45 a0 e8 90 01 04 8b 45 a0 50 8d 45 94 50 33 c9 ba 90 01 04 66 b8 44 00 90 00 } //01 00 
		$a_03_2 = {66 b8 44 00 e8 90 01 04 8b 55 d0 8b 03 8b 08 ff 51 38 8d 45 cc 50 33 c9 ba 90 01 04 66 b8 44 00 e8 90 01 04 8b 55 cc 8b 03 8b 08 ff 51 38 8d 45 c8 50 33 c9 ba 90 01 04 66 b8 44 00 e8 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}