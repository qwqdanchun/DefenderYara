
rule TrojanDownloader_Win32_Small_gen_AT{
	meta:
		description = "TrojanDownloader:Win32/Small.gen!AT,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 62 00 65 00 65 00 70 00 2e 00 73 00 79 00 73 00 00 00 00 00 73 66 63 5f } //01 00 
		$a_01_1 = {74 20 45 78 70 6c 6f 72 65 72 5c 32 2e 65 78 65 00 00 00 00 6f 70 65 6e 00 00 00 00 } //01 00 
		$a_01_2 = {65 72 5c 31 2e 65 78 65 00 00 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 00 53 68 65 6c 6c 45 78 65 63 75 74 65 41 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}