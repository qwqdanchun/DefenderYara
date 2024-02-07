
rule Backdoor_Win64_Bazarldr_MOK_MTB{
	meta:
		description = "Backdoor:Win64/Bazarldr.MOK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {41 8b f8 48 8b f2 48 8b e9 ff 15 90 02 04 48 85 c0 75 04 33 c0 eb 4b 48 8b c8 ff 15 90 02 04 48 8b d8 48 85 c0 74 eb 48 8b d6 48 8b cd ff 15 90 02 04 44 8b d8 4c 03 db 83 e7 0f 76 90 00 } //0a 00 
		$a_03_1 = {48 8b 04 0a 4c 8b 54 0a 08 48 83 c1 90 02 01 48 89 41 e0 4c 89 51 e8 48 8b 44 0a f0 4c 8b 54 0a f8 49 ff c9 48 89 41 f0 4c 89 51 f8 75 d4 90 00 } //0a 00 
		$a_03_2 = {41 8a 00 48 ff c2 49 ff c8 48 3b d7 88 44 2a 90 02 01 7c 90 00 } //01 00 
		$a_01_3 = {45 53 45 54 20 68 79 75 6e 79 61 } //01 00  ESET hyunya
		$a_81_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
		$a_81_5 = {25 73 25 73 2e 64 6c 6c } //00 00  %s%s.dll
		$a_00_6 = {5d 04 00 00 3e 77 04 80 5c 27 00 00 3f 77 04 80 00 00 01 00 08 00 11 00 ac 21 52 61 6e 75 } //6d 62 
	condition:
		any of ($a_*)
 
}