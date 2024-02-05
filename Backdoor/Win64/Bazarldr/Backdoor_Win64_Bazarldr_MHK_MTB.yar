
rule Backdoor_Win64_Bazarldr_MHK_MTB{
	meta:
		description = "Backdoor:Win64/Bazarldr.MHK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 54 24 20 44 8b cf 44 8b c0 33 c9 ff 15 90 02 04 48 8b f8 44 8b 44 24 90 02 01 48 8b d6 48 8b c8 e8 90 02 03 00 90 00 } //01 00 
		$a_03_1 = {48 8b 04 0a 4c 8b 54 0a 08 48 83 c1 90 02 01 48 89 41 e0 4c 89 51 e8 48 8b 44 0a f0 4c 8b 54 0a f8 49 ff c9 48 89 41 f0 4c 89 51 f8 75 d4 90 00 } //01 00 
		$a_03_2 = {41 8a 00 48 ff c2 49 ff c8 48 3b d3 42 88 44 32 90 02 01 7c ed 90 00 } //01 00 
		$a_03_3 = {8b 06 48 8b 4c 24 90 02 01 45 33 c9 89 44 24 90 02 01 45 8d 41 90 02 01 33 d2 48 89 74 24 90 02 01 48 89 6c 24 90 02 01 ff 15 90 02 04 85 c0 0f 95 c0 eb 02 90 00 } //01 00 
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 } //01 00 
		$a_03_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 4e 65 74 77 6f 72 6b 90 02 10 4e 6f 45 6e 74 69 72 65 4e 65 74 77 6f 72 6b 90 00 } //01 00 
		$a_01_6 = {43 4c 53 49 44 5c 25 31 5c 49 6e 50 72 6f 63 53 65 72 76 65 72 33 32 } //00 00 
	condition:
		any of ($a_*)
 
}