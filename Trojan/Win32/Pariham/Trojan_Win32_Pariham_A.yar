
rule Trojan_Win32_Pariham_A{
	meta:
		description = "Trojan:Win32/Pariham.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 11 b9 ab ba ba ab 89 18 89 48 04 89 4c 18 08 8d 78 08 8b df 85 ff 74 52 8b 45 fc 6a 00 8d 55 e8 52 } //01 00 
		$a_03_1 = {74 21 8b 53 f8 8d 43 f8 b9 ad de ef be 50 89 48 04 89 4c 02 08 a1 90 01 04 6a 00 90 00 } //01 00 
		$a_01_2 = {74 0d 8b 45 fc 3b 45 f4 75 05 bf 01 00 00 00 83 fe ff 74 27 c7 45 fc 00 00 00 00 85 f6 74 1c 8d 4d fc } //01 00 
		$a_01_3 = {0f 84 96 00 00 00 8b 15 88 06 42 00 52 57 68 16 61 01 00 68 } //01 00 
		$a_01_4 = {8b c8 2b f0 bf 23 00 00 00 8d 9b 00 00 00 00 8a 14 0e 80 f2 86 88 11 41 4f 75 f4 c6 40 23 00 } //01 00 
		$a_01_5 = {75 10 88 0c 02 b9 23 00 00 00 2b ca 8d 74 02 02 f3 a4 42 83 fa 23 72 b1 } //00 00 
		$a_00_6 = {7e 15 } //00 00  ᕾ
	condition:
		any of ($a_*)
 
}