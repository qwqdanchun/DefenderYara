
rule Trojan_Win32_WellMess_A_MTB{
	meta:
		description = "Trojan:Win32/WellMess.A!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 6f 74 2f 62 6f 74 6c 69 62 2e 41 45 53 5f 45 6e 63 72 79 70 74 } //01 00 
		$a_01_1 = {62 6f 74 2f 62 6f 74 6c 69 62 2e 63 6f 6e 76 65 72 74 46 72 6f 6d 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {6d 61 73 74 65 72 20 73 65 63 72 65 74 } //01 00 
		$a_01_3 = {6b 65 79 20 65 78 70 61 6e 73 69 6f 6e } //01 00 
		$a_01_4 = {63 6c 69 65 6e 74 20 66 69 6e 69 73 68 65 64 } //01 00 
		$a_01_5 = {73 65 72 76 65 72 20 66 69 6e 69 73 68 65 64 } //01 00 
		$a_01_6 = {43 4c 4e 54 53 52 56 52 } //03 00 
		$a_01_7 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 32 37 63 36 62 64 37 30 36 33 66 33 36 36 38 66 37 66 32 32 33 65 63 62 62 35 36 64 35 61 36 30 34 62 61 61 31 66 62 31 22 } //03 00 
		$a_01_8 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 39 32 62 31 39 62 62 63 62 62 32 33 38 37 65 30 38 35 30 30 63 36 64 62 31 61 33 62 66 62 38 63 39 62 61 34 61 31 32 } //03 00 
		$a_01_9 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 62 62 34 32 33 65 62 35 66 65 38 33 35 65 63 33 34 34 39 61 64 65 66 64 62 33 62 36 36 34 32 31 61 30 62 36 66 37 62 65 } //00 00 
	condition:
		any of ($a_*)
 
}