
rule Trojan_Win32_BrobanEup_A{
	meta:
		description = "Trojan:Win32/BrobanEup.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {80 3b e9 75 0c 83 fe 05 72 07 8b c7 2b c3 01 43 01 8b cf 2b cb 83 e9 05 c6 04 1e e9 89 4c 1e 01 } //01 00 
		$a_03_1 = {8b 03 3d 48 45 41 44 74 90 01 01 3d 50 4f 53 54 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BrobanEup_A_2{
	meta:
		description = "Trojan:Win32/BrobanEup.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6a 00 6a 01 ff 74 24 0c b8 44 33 22 11 ff d0 c3 } //01 00 
		$a_03_1 = {8b 4e 28 03 4d 90 01 01 53 6a 11 68 90 01 04 50 ff 75 08 89 0d 90 01 04 ff d7 90 00 } //01 00 
		$a_03_2 = {8b 4f 28 03 4d 90 01 01 53 6a 11 68 90 01 04 50 ff 75 08 89 0d 90 01 04 ff d6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BrobanEup_A_3{
	meta:
		description = "Trojan:Win32/BrobanEup.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 65 75 70 64 73 2e 70 68 70 } //01 00  /eupds.php
		$a_01_1 = {3c 2f 62 6f 6c 61 68 74 6d 6c 3e } //01 00  </bolahtml>
		$a_01_2 = {70 61 67 61 64 6f 72 2e 63 6f 6d 2e 62 72 } //01 00  pagador.com.br
		$a_01_3 = {2f 69 6e 64 65 78 31 2e 70 68 70 3f 6c 6f 67 3d } //01 00  /index1.php?log=
		$a_01_4 = {5b 67 66 6f 72 63 65 5f 64 6c 6c 5d 3a } //01 00  [gforce_dll]:
		$a_01_5 = {62 6f 6c 65 74 6f } //01 00  boleto
		$a_01_6 = {73 65 67 75 6e 64 61 76 69 61 } //00 00  segundavia
		$a_00_7 = {78 9a 01 } //00 04 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BrobanEup_A_4{
	meta:
		description = "Trojan:Win32/BrobanEup.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 67 00 00 3e 3c 00 00 4d 47 00 00 3c 2f 62 69 67 6e 75 6d 62 6f 6c 61 3e 00 00 00 3c 62 69 67 6e 75 6d 62 6f 6c 61 3e 00 } //01 00 
		$a_00_1 = {3c 62 6f 6c 61 68 74 6d 6c 3e 00 00 3c 66 69 6e 61 6c 3e 3c 2f 66 69 6e 61 6c 3e 00 } //01 00 
		$a_00_2 = {2e 62 6d 70 00 00 00 00 2e 66 6c 76 00 00 00 00 2e 73 77 66 00 00 00 00 2e 70 6e 67 00 00 00 00 2e 6a 70 65 67 00 00 00 2e 6a 70 67 00 00 00 00 2e 67 69 66 00 } //01 00 
		$a_00_3 = {78 79 7a 30 31 32 33 34 35 36 37 38 39 2d 5f 00 } //01 00  祸ぺ㈱㐳㘵㠷ⴹ_
		$a_00_4 = {26 63 6f 6e 66 69 67 3d 7b 00 00 00 61 64 65 72 26 63 6f 64 00 00 00 00 47 45 54 00 48 54 54 50 } //01 00 
		$a_00_5 = {75 73 65 72 69 6e 69 74 2e 65 78 65 00 00 00 00 53 79 73 74 65 6d 20 49 64 6c 65 20 50 72 6f 63 65 73 73 00 53 79 73 74 65 6d 00 00 49 6e 74 65 72 72 75 70 74 73 00 00 63 73 72 73 73 2e 65 78 65 } //01 00 
		$a_01_6 = {40 a3 04 10 01 00 80 3c 08 55 75 f4 80 7c 08 01 8b 75 ed 80 7c 08 02 ec 75 e6 80 7c 08 03 8b 75 df 80 7c 08 04 4d 75 d8 80 7c 08 05 08 75 d1 80 7c 08 06 56 75 ca 80 7c 08 07 8b } //01 00 
		$a_01_7 = {8b 02 3d 34 30 39 2d 0f 84 3d 01 00 00 3d 33 34 31 2d 0f 84 32 01 00 00 3d 36 35 32 2d 0f 84 27 01 00 00 3d 33 39 39 2d 0f 84 1c 01 00 00 3d 34 37 37 2d 0f 84 11 01 00 00 3d 31 30 34 2d 0f 84 06 01 00 00 3d 30 37 30 2d } //00 00 
		$a_00_8 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}