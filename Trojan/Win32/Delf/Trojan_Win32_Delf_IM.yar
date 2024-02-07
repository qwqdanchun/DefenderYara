
rule Trojan_Win32_Delf_IM{
	meta:
		description = "Trojan:Win32/Delf.IM,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {7a 6d 70 2e 74 78 74 } //01 00  zmp.txt
		$a_01_1 = {74 69 77 6c 62 6e 61 70 67 6a 73 70 34 71 79 7a 73 79 6c 6c 64 75 33 79 6c 76 34 72 6e 76 63 72 32 77 65 6a 64 65 72 34 70 79 39 72 76 6d 64 63 } //01 00  tiwlbnapgjsp4qyzsylldu3ylv4rnvcr2wejder4py9rvmdc
		$a_01_2 = {64 39 61 64 79 7a 39 33 34 37 32 6b 62 36 33 7a 35 32 31 74 36 65 38 30 77 71 70 69 35 36 7a 6e 62 31 36 66 79 61 36 69 6d 33 64 72 33 78 77 65 } //01 00  d9adyz93472kb63z521t6e80wqpi56znb16fya6im3dr3xwe
		$a_01_3 = {47 45 54 20 2f 64 61 74 61 2f 7b 61 69 64 7d 3f 63 6c 69 3d 31 30 26 } //01 00  GET /data/{aid}?cli=10&
		$a_03_4 = {44 32 30 30 39 30 37 30 36 90 01 0b 32 32 32 2e 37 33 2e 32 31 38 2e 32 30 90 00 } //01 00 
		$a_03_5 = {2f 6f 6e 6c 69 6e 65 32 2f 3f 73 3d 90 01 0c 26 76 3d 90 01 09 26 6e 3d 90 01 09 26 72 6e 64 3d 90 00 } //01 00 
		$a_03_6 = {2f 6c 69 73 74 32 2f 3f 73 3d 90 01 0a 26 61 3d 90 01 09 26 72 6e 64 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}