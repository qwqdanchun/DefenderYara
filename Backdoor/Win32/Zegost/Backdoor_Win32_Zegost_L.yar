
rule Backdoor_Win32_Zegost_L{
	meta:
		description = "Backdoor:Win32/Zegost.L,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {3d 00 02 00 00 72 2a 3d 08 02 00 00 77 23 8b 90 01 01 04 90 00 } //02 00 
		$a_03_1 = {8a 14 01 80 f2 90 01 01 88 10 40 90 01 01 75 f4 90 00 } //01 00 
		$a_03_2 = {b0 72 53 88 44 24 90 01 01 88 44 24 90 01 01 b0 65 90 00 } //01 00 
		$a_01_3 = {5c 73 79 73 74 65 6d 77 69 6e 2e 6c 6f 67 } //01 00  \systemwin.log
		$a_03_4 = {3d b7 00 00 00 74 d3 6a 00 90 01 13 68 7f 96 98 00 ff 15 90 01 04 eb f3 90 00 } //01 00 
		$a_01_5 = {25 73 25 63 25 63 25 69 25 69 25 63 25 69 2e 65 78 65 00 00 5c 63 6d 64 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}