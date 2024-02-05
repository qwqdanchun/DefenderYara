
rule TrojanDownloader_Win32_SysUpdate_A{
	meta:
		description = "TrojanDownloader:Win32/SysUpdate.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 6f 00 73 00 74 00 2e 00 55 00 49 00 2e 00 52 00 61 00 77 00 55 00 49 00 2e 00 42 00 75 00 66 00 66 00 65 00 72 00 53 00 69 00 7a 00 65 00 } //01 00 
		$a_01_1 = {6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 2e 00 41 00 75 00 74 00 6f 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 48 00 6f 00 73 00 74 00 2e 00 53 00 69 00 7a 00 65 00 28 00 31 00 30 00 32 00 34 00 2c 00 35 00 30 00 29 00 3b 00 22 00 20 00 22 00 25 00 73 00 22 00 20 00 32 00 3e 00 20 00 22 00 25 00 73 00 22 00 } //01 00 
		$a_01_2 = {52 65 6c 65 61 73 65 5c 73 74 75 62 73 5c 78 38 36 5c 55 70 64 61 74 65 72 2e 70 64 62 } //01 00 
		$a_01_3 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 55 00 70 00 64 00 61 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}