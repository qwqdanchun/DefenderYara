
rule Trojan_Win32_Diamin_G{
	meta:
		description = "Trojan:Win32/Diamin.G,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {6a 00 6a 00 8d 45 f0 50 b9 90 01 04 ba 90 01 04 b8 90 01 04 e8 90 01 04 8b 45 f0 e8 90 01 04 50 6a 00 90 00 } //0a 00 
		$a_02_1 = {68 24 10 00 00 6a 00 6a 00 90 02 04 8d 45 90 01 01 50 33 c9 ba 90 01 04 b8 90 01 04 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 50 6a 00 6a 00 90 00 } //02 00 
		$a_02_2 = {6c 65 72 4d 90 02 10 44 69 61 90 02 10 54 52 41 43 4b 90 00 } //02 00 
		$a_02_3 = {6c 65 72 4d 90 02 10 44 69 61 90 02 10 49 53 49 4f 4e 90 00 } //01 00 
		$a_00_4 = {44 69 73 69 6e 73 74 61 6c 6c 61 2e 6c 6e 6b } //01 00 
		$a_00_5 = {70 3a 2f 2f 66 6c 61 74 2e 74 72 61 66 66 } //01 00 
		$a_00_6 = {69 61 6c 31 2e 65 } //01 00 
		$a_00_7 = {74 69 2c 20 73 63 65 67 6c 69 65 72 65 20 22 4e 6f 22 20 70 65 72 20 61 63 63 65 64 65 72 65 20 64 69 72 65 74 74 61 6d 65 6e 74 65 2e } //00 00 
	condition:
		any of ($a_*)
 
}