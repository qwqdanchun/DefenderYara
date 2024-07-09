
rule Backdoor_BAT_Bladabindi_AV{
	meta:
		description = "Backdoor:BAT/Bladabindi.AV,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {62 00 6d 00 56 00 30 00 63 00 32 00 67 00 67 00 5a 00 6d 00 6c 00 79 00 5a 00 58 00 64 00 68 00 62 00 47 00 77 00 67 00 59 00 57 00 52 00 6b 00 49 00 47 00 46 00 73 00 62 00 47 00 39 00 33 00 5a 00 57 00 52 00 77 00 63 00 6d 00 39 00 6e 00 63 00 6d 00 46 00 74 00 49 00 43 00 49 00 3d 00 } //1 bmV0c2ggZmlyZXdhbGwgYWRkIGFsbG93ZWRwcm9ncmFtICI=
		$a_00_1 = {59 00 32 00 31 00 6b 00 4c 00 6d 00 56 00 34 00 5a 00 53 00 41 00 76 00 61 00 79 00 42 00 77 00 61 00 57 00 35 00 6e 00 49 00 44 00 41 00 67 00 4a 00 69 00 42 00 6b 00 5a 00 57 00 77 00 67 00 49 00 67 00 3d 00 3d 00 } //1 Y21kLmV4ZSAvayBwaW5nIDAgJiBkZWwgIg==
		$a_03_2 = {1f 1d 0f 01 1a 28 ?? 00 00 06 } //1
		$a_03_3 = {1f 1d 0f 00 1a 28 ?? 00 00 06 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}