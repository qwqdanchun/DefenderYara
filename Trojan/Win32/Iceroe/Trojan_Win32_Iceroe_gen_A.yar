
rule Trojan_Win32_Iceroe_gen_A{
	meta:
		description = "Trojan:Win32/Iceroe.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 0e 00 00 08 00 "
		
	strings :
		$a_03_0 = {74 2a 53 8d 45 f8 50 6a 02 8d 45 fc 50 56 ff 15 90 01 04 80 7d fc 4d 88 5d fe 75 08 80 7d fd 5a 75 02 b3 01 90 00 } //08 00 
		$a_01_1 = {74 3c 8d 55 fb 8a 02 3c e9 75 3c 8d 55 fb 8b 52 01 8b c2 83 c0 05 03 45 0c 89 45 f0 8d 45 f4 50 6a 05 8d 45 fb } //08 00 
		$a_03_2 = {89 86 8c 00 00 00 8b ce 89 9e 90 90 00 00 00 e8 90 01 02 00 00 6a ff 53 8b c6 8b cf e8 90 01 04 6a 05 68 90 01 04 8b cf e8 90 01 04 6a ff 53 8b c6 8b cd e8 90 01 04 6a 05 90 00 } //02 00 
		$a_01_3 = {63 00 6f 00 72 00 65 00 00 00 } //02 00 
		$a_01_4 = {63 00 61 00 72 00 72 00 69 00 65 00 72 00 00 00 } //02 00 
		$a_01_5 = {75 00 3d 00 30 00 78 00 25 00 2e 00 38 00 78 00 26 00 61 00 3d 00 30 00 78 00 25 00 2e 00 38 00 78 00 26 00 76 00 3d 00 30 00 78 00 25 00 2e 00 38 00 78 00 26 00 74 00 3d 00 25 00 73 00 } //02 00 
		$a_01_6 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 25 00 73 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 3f 00 6e 00 3d 00 25 00 73 00 26 00 25 00 73 00 } //01 00 
		$a_01_7 = {43 6f 72 65 2e 64 6c 6c 00 53 74 61 72 74 00 53 74 6f 70 00 } //01 00 
		$a_01_8 = {43 00 6f 00 72 00 65 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 45 00 78 00 65 00 63 00 00 00 } //01 00 
		$a_01_9 = {43 00 6f 00 72 00 65 00 2e 00 45 00 78 00 65 00 63 00 00 00 } //01 00 
		$a_01_10 = {43 00 6f 00 72 00 65 00 2e 00 55 00 70 00 64 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_01_11 = {54 00 72 00 61 00 66 00 55 00 72 00 6c 00 00 00 } //01 00 
		$a_01_12 = {43 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 50 00 6c 00 75 00 67 00 69 00 6e 00 00 00 } //01 00 
		$a_01_13 = {4b 00 6e 00 6f 00 63 00 6b 00 44 00 61 00 74 00 65 00 54 00 69 00 6d 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}