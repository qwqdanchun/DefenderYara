
rule Backdoor_Win32_Poison_BF{
	meta:
		description = "Backdoor:Win32/Poison.BF,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0a 00 00 0a 00 "
		
	strings :
		$a_03_0 = {33 c9 b8 25 49 92 24 f7 e1 8b c1 2b c2 d1 e8 03 c2 c1 e8 02 8d 14 c5 00 00 00 00 2b d0 8b c1 2b c2 75 09 80 b1 90 01 04 0b eb 07 80 b1 90 01 04 21 41 81 f9 90 01 04 72 c6 90 00 } //0a 00 
		$a_03_1 = {ff 15 04 b0 40 00 33 ff 8d 49 00 56 e8 68 01 00 00 88 84 3b 90 01 02 00 00 47 83 c4 04 81 ff 90 01 02 00 00 72 e7 5f 5e b0 01 5d c3 90 00 } //0a 00 
		$a_03_2 = {8d 49 00 80 30 05 8a 10 88 54 0c 10 41 48 81 f9 90 01 02 00 00 72 ed 55 e8 90 00 } //01 00 
		$a_01_3 = {6f 70 68 63 72 61 63 6b 2e 74 78 74 00 } //01 00 
		$a_01_4 = {6e 6f 69 70 2e 74 78 74 00 } //01 00 
		$a_01_5 = {6c 6f 6f 2e 74 78 74 00 } //01 00 
		$a_01_6 = {68 61 70 70 69 6e 65 73 73 2e 74 78 74 00 } //01 00 
		$a_01_7 = {61 6e 74 69 2e 74 78 74 00 } //01 00 
		$a_01_8 = {71 75 65 72 79 2e 74 78 74 00 } //01 00 
		$a_01_9 = {6f 66 66 65 72 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}