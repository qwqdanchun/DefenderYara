
rule Trojan_Win32_Shizpusik_A{
	meta:
		description = "Trojan:Win32/Shizpusik.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 64 6c 6c 2e 65 78 65 64 6f 77 6e 6c 6f 61 64 2e 77 69 6e 64 6f 77 73 75 70 64 61 74 65 2e 63 6f 6d } //01 00 
		$a_00_1 = {48 54 54 50 2f 31 2e 31 68 74 74 70 73 3a 2f 2f 68 74 74 70 3a 2f 2f 25 73 } //01 00 
		$a_00_2 = {5b 25 75 5d 5b 25 73 3a 25 73 3a 25 75 5d 5b 30 78 25 78 3b 30 78 25 78 5d 20 25 73 44 6e 73 46 6c 75 73 68 52 65 73 6f 6c 76 65 72 43 61 63 68 65 } //01 00 
		$a_01_3 = {33 d2 88 14 03 3b da 76 47 } //01 00 
		$a_01_4 = {70 72 6f 6a 65 63 74 5c 6d 61 69 6e 5c 70 61 79 6c 6f 61 64 5c 70 61 79 6c 6f 61 64 2e 78 38 36 2e 70 64 62 } //01 00 
		$a_02_5 = {55 00 53 00 45 00 52 00 5f 00 50 00 52 00 49 00 56 00 5f 00 47 00 55 00 45 00 53 00 54 00 90 02 10 55 00 53 00 45 00 52 00 5f 00 50 00 52 00 49 00 56 00 5f 00 55 00 53 00 45 00 52 00 90 02 10 55 00 53 00 45 00 52 00 5f 00 50 00 52 00 49 00 56 00 5f 00 41 00 44 00 4d 00 49 00 4e 00 90 02 10 25 00 77 00 73 00 5c 00 25 00 77 00 73 00 90 00 } //03 00 
		$a_01_6 = {b2 f8 f0 f0 b2 f9 e4 f9 f8 f3 eb f2 f0 f3 fd f8 b2 eb f5 f2 f8 f3 eb ef e9 ec f8 fd e8 f9 b2 ff } //00 00 
	condition:
		any of ($a_*)
 
}