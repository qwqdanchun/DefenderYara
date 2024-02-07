
rule TrojanDownloader_Win32_Rechide_A{
	meta:
		description = "TrojanDownloader:Win32/Rechide.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 55 49 6d 67 72 00 00 20 64 62 67 65 6e 75 6d } //01 00 
		$a_00_1 = {69 6e 73 74 61 6c 6c 00 64 62 67 65 6e 75 6d } //01 00 
		$a_02_2 = {63 3a 5c 72 65 63 79 63 6c 65 72 5c 90 02 20 63 3a 5c 72 65 63 79 63 6c 65 72 5c 90 02 20 2e 65 78 65 90 00 } //01 00 
		$a_00_3 = {56 69 63 74 69 6d 3a 20 25 73 2d 25 78 00 00 00 46 69 6c 65 3a 20 } //01 00 
		$a_00_4 = {55 31 52 31 4c 31 44 31 6f 31 77 31 6e 31 6c 31 6f 31 61 31 64 31 54 31 6f 31 46 31 69 31 6c 31 65 31 41 31 } //01 00  U1R1L1D1o1w1n1l1o1a1d1T1o1F1i1l1e1A1
		$a_00_5 = {68 74 74 70 3a 2f 2f 25 73 2f 25 73 3f 68 3d 25 73 2d 25 78 26 72 3d 25 64 } //00 00  http://%s/%s?h=%s-%x&r=%d
	condition:
		any of ($a_*)
 
}