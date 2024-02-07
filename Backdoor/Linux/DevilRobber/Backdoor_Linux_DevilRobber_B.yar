
rule Backdoor_Linux_DevilRobber_B{
	meta:
		description = "Backdoor:Linux/DevilRobber.B,SIGNATURE_TYPE_MACHOHSTR_EXT,08 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 63 70 00 33 34 31 32 33 00 33 34 33 32 31 } //01 00 
		$a_01_1 = {25 23 2e 38 78 20 25 23 2e 38 78 20 25 23 2e 38 78 20 25 23 2e 38 78 20 25 23 2e 38 78 } //01 00  %#.8x %#.8x %#.8x %#.8x %#.8x
		$a_01_2 = {25 23 2e 38 78 5f 25 23 2e 38 78 5f 25 23 2e 38 78 2e 7a 69 70 20 7a 69 70 20 2d 72 20 2d 58 } //01 00  %#.8x_%#.8x_%#.8x.zip zip -r -X
		$a_01_3 = {64 5f 73 74 61 74 75 73 2e 63 66 67 } //01 00  d_status.cfg
		$a_01_4 = {2e 2f 70 5f 73 74 61 72 74 2e 73 68 } //03 00  ./p_start.sh
		$a_01_5 = {be 81 80 80 80 53 31 db 89 d9 0f af cb 83 c1 17 89 c8 f7 e6 c1 ea 07 89 d0 c1 e0 08 29 d0 29 c1 88 0c 1f 43 81 fb 00 01 00 00 } //03 00 
		$a_01_6 = {89 e5 56 8b 75 08 53 8b 5d 0c 0f b6 04 16 84 c0 75 04 31 c0 eb 14 32 04 0a 88 04 13 42 81 fa 01 01 00 00 75 e5 b8 01 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}