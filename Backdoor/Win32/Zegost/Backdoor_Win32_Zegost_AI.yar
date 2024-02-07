
rule Backdoor_Win32_Zegost_AI{
	meta:
		description = "Backdoor:Win32/Zegost.AI,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 09 00 00 03 00 "
		
	strings :
		$a_01_0 = {51 68 02 01 00 00 68 13 08 00 00 52 89 7c 24 30 ff d3 33 c0 6a 00 66 8b 46 12 6a 00 68 04 08 00 00 50 ff d3 5f c6 46 10 00 5b b0 01 } //05 00 
		$a_03_1 = {4d 32 36 33 c7 90 01 03 49 56 33 32 c7 90 01 03 4d 50 34 32 c7 90 01 03 63 76 69 64 90 00 } //05 00 
		$a_01_2 = {c7 46 2c 0a 00 00 00 c7 46 30 06 00 00 00 c7 46 34 10 27 00 00 e8 } //05 00 
		$a_01_3 = {25 00 64 00 25 00 64 00 25 00 64 00 25 00 64 00 25 00 64 00 25 00 64 00 2e 00 6c 00 6f 00 67 00 } //05 00  %d%d%d%d%d%d.log
		$a_03_4 = {4d 00 61 00 72 00 6b 00 90 02 10 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 44 00 62 00 78 00 55 00 70 00 64 00 61 00 74 00 65 00 42 00 54 00 90 00 } //05 00 
		$a_03_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 90 02 10 6b 00 6c 00 2e 00 74 00 6d 00 70 00 90 00 } //01 00 
		$a_01_6 = {5b 00 4e 00 75 00 6d 00 20 00 4c 00 6f 00 63 00 6b 00 5d 00 } //01 00  [Num Lock]
		$a_01_7 = {5b 00 50 00 72 00 69 00 6e 00 74 00 20 00 53 00 63 00 72 00 65 00 65 00 6e 00 5d 00 } //01 00  [Print Screen]
		$a_01_8 = {5b 00 53 00 63 00 72 00 6f 00 6c 00 6c 00 20 00 4c 00 6f 00 63 00 6b 00 5d 00 } //00 00  [Scroll Lock]
	condition:
		any of ($a_*)
 
}