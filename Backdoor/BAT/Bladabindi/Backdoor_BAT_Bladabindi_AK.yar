
rule Backdoor_BAT_Bladabindi_AK{
	meta:
		description = "Backdoor:BAT/Bladabindi.AK,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5e 10 69 4c e4 41 60 d5 72 71 67 a2 d1 e4 03 3c 47 d4 04 4b fd 85 0d d2 6b b5 0a a5 fa a8 b5 35 6c 98 b2 42 d6 c9 bb db 40 f9 bc ac e3 6c d8 32 } //01 00 
		$a_01_1 = {20 35 46 4f 52 20 81 fb d3 62 20 47 81 87 3e 28 } //01 00 
		$a_03_2 = {59 26 68 d8 6a d8 d7 02 7b 90 01 04 03 6f 90 00 } //01 00 
		$a_01_3 = {34 00 35 00 33 00 44 00 38 00 34 00 41 00 30 00 42 00 37 00 35 00 38 00 30 00 38 00 36 00 37 00 32 00 34 00 38 00 44 00 31 00 44 00 44 00 33 00 43 00 41 00 35 00 32 00 32 00 41 00 45 00 33 00 } //01 00 
		$a_01_4 = {53 65 72 76 65 72 2e 65 78 65 00 53 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}