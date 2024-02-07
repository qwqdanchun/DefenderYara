
rule TrojanDownloader_Win32_Korklic_A{
	meta:
		description = "TrojanDownloader:Win32/Korklic.A,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 40 00 70 10 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 73 5c 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 2e 25 63 25 63 25 63 00 } //01 00 
		$a_01_1 = {57 69 6e 54 6f 53 65 72 76 65 72 50 72 6f 67 72 61 6d } //01 00  WinToServerProgram
		$a_01_2 = {25 73 3f 6d 6f 64 65 3d 62 6f 6f 74 26 4d 79 56 61 6c 75 65 3d 25 73 26 63 6f 64 65 3d 25 73 00 68 74 74 70 3a 2f 2f 77 77 77 2e } //01 00 
		$a_01_3 = {00 72 00 00 00 5c 4b 43 50 6f 69 6e 74 5f 49 6e 66 6f 4e 65 77 2e 64 61 74 00 00 00 00 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 } //00 00 
	condition:
		any of ($a_*)
 
}