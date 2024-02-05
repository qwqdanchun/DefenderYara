
rule Trojan_Win64_Macultum_B{
	meta:
		description = "Trojan:Win64/Macultum.B,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 00 4d 00 75 00 74 00 75 00 61 00 6c 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 00 00 } //01 00 
		$a_01_1 = {4c 00 75 00 61 00 5f 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 42 00 6f 00 6f 00 74 00 73 00 74 00 72 00 61 00 70 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 } //01 00 
		$a_01_2 = {48 00 65 00 6c 00 70 00 65 00 72 00 20 00 2d 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 61 00 64 00 6a 00 75 00 73 00 74 00 20 00 70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 73 00 } //01 00 
		$a_01_3 = {70 72 6f 6a 65 63 74 73 5c 70 78 5c 6d 6f 6e 69 74 6f 72 5c 4d 6f 6e 69 74 6f 72 2e 70 64 62 00 } //01 00 
		$a_01_4 = {00 26 63 3d 00 26 65 3d 00 26 67 3d 00 3f 76 3d 32 26 6b 3d 00 } //01 00 
		$a_03_5 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 90 02 08 4d 75 74 75 61 6c 20 69 6e 73 74 61 6c 6c 20 7c 20 72 65 6d 6f 76 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}