
rule TrojanSpy_Win32_Bancos_AGQ{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 5f 00 73 00 79 00 73 00 69 00 6e 00 69 00 2f 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_1 = {36 32 42 46 35 38 44 45 33 32 45 41 36 30 42 43 34 32 43 34 } //01 00 
		$a_00_2 = {8b 45 f4 0f b7 5c 78 fe 33 5d e4 3b 5d e8 7f 0b 81 c3 ff 00 00 00 2b 5d e8 eb 03 } //01 00 
		$a_00_3 = {0f b6 08 88 0a c3 0f b7 08 66 89 0a c3 } //00 00 
	condition:
		any of ($a_*)
 
}