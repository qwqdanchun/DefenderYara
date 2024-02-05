
rule Trojan_Win32_NetLoader_RPH_MTB{
	meta:
		description = "Trojan:Win32/NetLoader.RPH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 73 00 65 00 63 00 77 00 65 00 62 00 2e 00 69 00 72 00 2f 00 6a 00 73 00 } //01 00 
		$a_01_1 = {2f 00 63 00 20 00 22 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 49 00 45 00 58 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 25 00 73 00 2f 00 25 00 73 00 27 00 29 00 22 00 } //01 00 
		$a_01_2 = {2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 25 00 73 00 22 00 20 00 3e 00 3e 00 20 00 4e 00 55 00 4c 00 } //01 00 
		$a_01_3 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 32 00 30 00 2e 00 70 00 73 00 31 00 } //01 00 
		$a_01_4 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 34 00 30 00 2e 00 70 00 73 00 31 00 } //01 00 
		$a_01_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 57 } //00 00 
	condition:
		any of ($a_*)
 
}