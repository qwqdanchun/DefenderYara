
rule Trojan_Win32_Killav_CN{
	meta:
		description = "Trojan:Win32/Killav.CN,SIGNATURE_TYPE_PEHSTR,3d 00 29 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {45 78 70 6c 6f 72 65 72 2e 44 6f 77 6e 6c 6f 61 64 65 72 } //0a 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 50 72 6f 67 72 65 73 73 } //0a 00 
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 } //0a 00 
		$a_01_3 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 61 00 63 00 63 00 65 00 73 00 73 00 } //0a 00 
		$a_01_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 32 00 31 00 2e 00 31 00 34 00 2e 00 } //0a 00 
		$a_01_5 = {31 00 35 00 31 00 2e 00 38 00 30 00 2f 00 73 00 68 00 68 00 6a 00 2f 00 } //01 00 
		$a_01_6 = {5c 00 61 00 64 00 37 00 37 00 33 00 31 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_7 = {5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 45 00 52 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_01_8 = {5c 00 6c 00 63 00 63 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_9 = {5c 00 73 00 76 00 63 00 68 00 6d 00 65 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_10 = {5c 00 73 00 76 00 63 00 68 00 6d 00 65 00 73 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_11 = {5c 00 73 00 76 00 63 00 68 00 6d 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}