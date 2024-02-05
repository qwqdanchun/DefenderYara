
rule Trojan_Win32_Banker_BD{
	meta:
		description = "Trojan:Win32/Banker.BD,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 42 00 6f 00 72 00 6c 00 61 00 6e 00 64 00 5c 00 44 00 65 00 6c 00 70 00 68 00 69 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 65 00 73 00 } //01 00 
		$a_01_1 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 44 00 69 00 73 00 70 00 6f 00 73 00 69 00 74 00 69 00 6f 00 6e 00 3a 00 20 00 66 00 6f 00 72 00 6d 00 2d 00 64 00 61 00 74 00 61 00 3b 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 25 00 73 00 22 00 3b 00 20 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 25 00 73 00 22 00 } //01 00 
		$a_01_2 = {65 00 6d 00 61 00 69 00 6c 00 3d 00 76 00 61 00 69 00 76 00 61 00 6d 00 6f 00 73 00 6c 00 61 00 68 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_3 = {66 00 72 00 6f 00 6d 00 3d 00 69 00 6e 00 6e 00 40 00 6f 00 69 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_4 = {2f 00 65 00 6e 00 76 00 69 00 61 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_5 = {54 00 6f 00 6b 00 65 00 6e 00 20 00 69 00 6e 00 76 00 } //00 00 
	condition:
		any of ($a_*)
 
}