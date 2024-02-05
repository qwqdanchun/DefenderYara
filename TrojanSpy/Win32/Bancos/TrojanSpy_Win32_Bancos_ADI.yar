
rule TrojanSpy_Win32_Bancos_ADI{
	meta:
		description = "TrojanSpy:Win32/Bancos.ADI,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {01 2c 08 74 90 01 01 04 d8 2c 0a 72 90 01 01 c6 01 00 90 00 } //02 00 
		$a_03_1 = {83 e8 04 8b 00 83 f8 03 75 90 01 01 6a 01 8b c6 8b 15 90 01 04 e8 90 01 04 8b d7 b1 01 90 00 } //02 00 
		$a_01_2 = {2f 6a 61 6d 62 61 2f 6a 73 2f 63 73 73 2f 73 65 6e 64 69 6e 66 6f 2e 70 68 70 } //01 00 
		$a_01_3 = {50 6f 72 20 66 61 76 6f 72 2c 20 69 6e 66 6f 72 6d 65 20 6f 73 20 64 61 64 6f 73 20 61 62 61 69 78 6f 20 70 61 72 61 20 63 6f 6e 66 69 72 6d 61 72 20 6f 20 72 65 63 61 64 61 73 74 72 61 6d 65 6e 74 6f 20 64 65 20 73 75 61 20 63 6f 6e 74 61 3a } //01 00 
		$a_01_4 = {52 65 63 61 64 61 73 74 72 61 6d 65 6e 74 6f 20 43 61 69 78 61 } //01 00 
		$a_01_5 = {50 61 72 61 20 6f 20 61 63 65 73 73 6f 20 61 6f 20 42 72 61 64 65 73 63 6f 20 49 6e 74 65 72 6e 65 74 20 42 61 6e 6b 69 6e 67 } //01 00 
		$a_00_6 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 } //01 00 
		$a_00_7 = {45 64 69 74 31 4b 65 79 50 72 65 73 73 } //00 00 
	condition:
		any of ($a_*)
 
}