
rule Trojan_Win32_BHO_DC_dll{
	meta:
		description = "Trojan:Win32/BHO.DC!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 3a 5c 5f 50 72 6f 67 72 61 6d 5c 63 68 72 6f 6d 65 5c 5f 5f 62 69 6e 5c 44 65 62 75 67 5c 6c 6f 67 2e 74 78 74 } //01 00  E:\_Program\chrome\__bin\Debug\log.txt
		$a_01_1 = {74 6a 2e 68 61 6f 37 35 30 2e 63 6f 6d 2f 72 65 64 69 72 65 63 74 74 65 73 74 2e 74 78 74 } //01 00  tj.hao750.com/redirecttest.txt
		$a_01_2 = {7b 38 41 39 46 41 39 37 32 2d 46 36 33 43 2d 34 42 33 43 2d 39 41 45 33 2d 36 32 37 41 30 43 36 32 31 31 31 31 7d 20 3d 20 73 } //01 00  {8A9FA972-F63C-4B3C-9AE3-627A0C621111} = s
		$a_01_3 = {5c 00 00 00 66 75 63 6b 79 6f 75 00 5c 00 } //01 00 
		$a_01_4 = {5c 00 00 00 5f 32 30 30 38 5f 00 00 5c 00 } //01 00 
		$a_03_5 = {2f 00 00 00 00 23 78 79 7a 31 30 32 38 71 74 6d 00 90 02 08 74 6f 6e 67 6a 69 2e 00 74 6a 2e 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}