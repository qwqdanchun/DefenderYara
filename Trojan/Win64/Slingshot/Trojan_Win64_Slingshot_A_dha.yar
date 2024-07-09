
rule Trojan_Win64_Slingshot_A_dha{
	meta:
		description = "Trojan:Win64/Slingshot.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_80_0 = {4c 69 6e 65 52 65 63 73 } //LineRecs  1
		$a_80_1 = {43 52 54 31 4e 31 54 } //CRT1N1T  1
		$a_03_2 = {68 fe ca 0d 0f 48 83 ec 30 90 90 e8 ?? ?? ?? ?? 48 89 dc 5b 8b 05 ?? ?? ?? ?? 83 e0 20 74 ?? 48 8b 05 ?? ?? ?? ?? 48 85 c0 74 } //2
		$a_03_3 = {48 83 e7 fc 8b 0d ?? ?? ?? ?? 81 c1 [0-10] c1 e9 02 31 c0 f3 ab 5f 58 48 8d 0d ?? ?? ?? ?? 48 31 d2 41 b8 00 80 00 00 ff e0 } //1
		$a_03_4 = {75 0a b8 39 01 00 c0 e9 ?? ?? 00 00 8b 93 ?? ?? 00 00 33 c9 41 b8 00 10 00 00 44 8d 49 04 ff d0 48 89 83 ?? ?? 00 00 48 85 c0 75 1e 65 8b 04 25 ?? ?? 00 00 b9 17 00 00 c0 ba 04 06 00 c0 3d 77 06 00 00 } //1
		$a_03_5 = {4c 8b 51 10 c7 45 ?? 6c 00 2e 00 c7 45 ?? 64 00 6c 00 c7 45 ?? 6c 00 00 00 } //1
		$a_03_6 = {e8 89 ca a0 c7 45 ?? b7 d7 ca a2 c7 45 ?? b0 bb e5 d1 } //2
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*2) >=5
 
}