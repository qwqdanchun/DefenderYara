
rule Trojan_Win32_Kovter_C{
	meta:
		description = "Trojan:Win32/Kovter.C,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0b 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 8a 44 18 ff 24 0f 8b 55 f8 8a 54 32 ff 80 e2 0f 32 c2 88 45 f3 8d 45 fc e8 90 01 04 8b 55 fc 8a 54 1a ff 80 e2 f0 90 00 } //01 00 
		$a_81_1 = {3e 3e 75 70 64 69 64 00 } //01 00  㸾灵楤d
		$a_81_2 = {6d 6f 64 65 3d 32 26 64 6f 6e 65 3d 31 26 63 6d 64 69 64 3d 00 } //01 00 
		$a_01_3 = {61 00 64 00 64 00 68 00 65 00 61 00 64 00 65 00 72 00 73 00 3d 00 31 00 26 00 55 00 49 00 44 00 3d 00 00 00 } //01 00 
		$a_81_4 = {6d 6f 64 65 3d 34 26 55 49 44 3d 00 } //01 00  潭敤㐽唦䑉=
		$a_81_5 = {26 4f 53 62 69 74 3d 00 } //01 00  伦打瑩=
		$a_01_6 = {6c 00 69 00 6d 00 69 00 74 00 62 00 6c 00 61 00 6e 00 6b 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 75 00 73 00 65 00 00 00 } //01 00 
		$a_01_7 = {74 72 79 20 7b 6a 77 70 6c 61 79 65 72 28 29 2e 70 6c 61 79 28 29 7d } //01 00  try {jwplayer().play()}
		$a_03_8 = {3c 61 20 68 72 65 66 3d 27 90 01 0b 27 3e 63 6c 69 63 6b 3c 2f 61 3e 90 00 } //01 00 
		$a_03_9 = {2e 52 75 6e 28 22 90 01 0b 69 65 78 20 24 65 6e 76 3a 90 00 } //01 00 
		$a_03_10 = {6d 73 68 74 61 20 22 6a 61 76 61 73 63 72 69 70 74 3a 90 02 10 3d 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 3b 90 00 } //00 00 
		$a_00_11 = {7e 15 00 00 3b 7f 33 2e 28 af 04 } //7b a1 
	condition:
		any of ($a_*)
 
}