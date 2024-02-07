
rule Ransom_Win32_Isda_A{
	meta:
		description = "Ransom:Win32/Isda.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6c 65 65 6e 2e 62 61 74 00 } //01 00 
		$a_01_1 = {2e 74 77 6f 40 41 55 53 49 2e 43 4f 4d 00 } //01 00  琮潷䅀单⹉佃M
		$a_03_2 = {2e 6b 77 6d 00 90 01 0b 2e 64 6f 63 78 00 90 01 0a 2e 70 64 66 00 90 01 0b 2e 61 72 6a 00 90 01 0b 2e 63 73 76 90 00 } //01 00 
		$a_01_3 = {61 66 72 69 63 61 2e 62 6d 70 00 } //01 00 
		$a_03_4 = {66 73 61 73 67 64 00 90 01 09 6d 3a 5c 00 90 00 } //02 00 
		$a_01_5 = {81 bd 10 ff ff ff 00 80 00 00 7c 09 c6 85 1f ff ff ff 20 eb 39 81 bd 10 ff ff ff 00 04 00 00 7e 26 81 bd 10 ff ff ff 00 80 00 00 7d 1a 8b 85 10 ff ff ff 85 c0 79 05 05 ff 03 00 00 c1 f8 0a 88 85 1f ff ff ff eb 07 } //00 00 
		$a_00_6 = {78 16 } //01 00  ᙸ
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Isda_A_2{
	meta:
		description = "Ransom:Win32/Isda.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 65 6d 70 00 00 00 00 ff ff ff ff 04 00 00 00 2e 6a 70 67 00 00 00 00 ff ff ff ff 05 00 00 00 2e 6a 70 65 67 00 00 00 ff ff ff ff 04 00 00 00 2e 64 6f 63 00 00 00 00 ff ff ff ff 04 00 00 00 2e 72 74 66 00 00 00 00 ff ff ff ff 04 00 00 00 } //01 00 
		$a_00_1 = {69 64 3d 00 ff ff ff ff 03 00 00 00 70 63 3d 00 ff ff ff ff 05 00 00 00 74 61 69 6c 3d 00 } //01 00 
		$a_02_2 = {66 73 61 73 67 64 00 00 ff ff ff ff 90 01 01 00 00 00 90 02 0f 2e 62 6d 70 00 90 02 04 68 74 31 93 90 00 } //01 00 
		$a_00_3 = {71 3a 5c 00 ff ff ff ff 03 00 00 00 74 3a 5c 00 ff ff ff ff 03 00 00 00 73 3a 5c 00 ff ff ff ff 03 00 00 00 76 3a 5c 00 } //01 00 
		$a_02_4 = {2f 63 6c 6f 73 65 2f 73 63 72 69 70 74 2e 70 68 70 00 00 00 ff ff ff ff 90 01 01 00 00 00 68 74 74 70 3a 2f 2f 90 02 1e 2e 63 6f 6d 2f 6f 70 65 6e 2f 73 63 72 69 70 74 2e 70 68 70 90 00 } //00 00 
		$a_00_5 = {7e } //15 00  ~
	condition:
		any of ($a_*)
 
}