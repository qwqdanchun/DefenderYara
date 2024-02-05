
rule Trojan_Win32_FakeIA_I{
	meta:
		description = "Trojan:Win32/FakeIA.I,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b f0 89 3e 8b d6 83 c2 05 8b c3 e8 90 01 04 8b d6 83 c2 04 88 02 c6 03 e9 90 00 } //01 00 
		$a_03_1 = {8a 54 3a ff 90 03 02 02 80 f2 32 55 90 01 01 e8 90 01 04 8b 55 90 01 01 8b c6 e8 90 01 04 47 4b 75 e0 90 00 } //01 00 
		$a_03_2 = {83 fb 05 72 90 01 01 8b cb 8b d5 8b c7 e8 90 01 04 8b c7 8b d0 03 d3 c6 02 e9 90 00 } //01 00 
		$a_03_3 = {50 6a 03 e8 90 01 04 6a ff e8 90 01 04 c3 8d 40 00 53 51 b8 90 01 04 8b 10 c6 02 90 01 01 8b 10 c6 42 01 90 01 01 8b 10 90 00 } //01 00 
		$a_03_4 = {83 38 06 75 15 68 90 01 04 8b 43 3c 50 e8 90 01 04 85 c0 0f 94 c0 eb 13 68 90 01 04 8b 43 3c 50 e8 90 01 04 85 c0 0f 94 c0 84 c0 74 0e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}