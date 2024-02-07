
rule TrojanDownloader_Win32_Hormelex_H{
	meta:
		description = "TrojanDownloader:Win32/Hormelex.H,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 68 61 6d 31 30 31 30 90 02 20 2e 7a 69 70 90 00 } //01 00 
		$a_01_1 = {39 41 42 37 36 35 38 44 41 39 35 31 38 43 34 34 46 44 32 33 31 33 33 33 44 31 37 36 } //01 00  9AB7658DA9518C44FD231333D176
		$a_01_2 = {43 36 36 32 38 45 41 43 35 44 43 44 37 35 41 39 34 37 } //01 00  C6628EAC5DCD75A947
		$a_01_3 = {44 33 37 31 39 39 34 41 46 38 32 45 31 41 43 41 30 42 33 36 } //01 00  D371994AF82E1ACA0B36
		$a_01_4 = {36 46 38 41 41 44 36 33 38 45 41 39 35 33 43 35 36 33 39 32 42 35 } //00 00  6F8AAD638EA953C56392B5
		$a_00_5 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}