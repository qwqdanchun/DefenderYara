
rule TrojanDropper_Win32_Swisyn_A{
	meta:
		description = "TrojanDropper:Win32/Swisyn.A,SIGNATURE_TYPE_PEHSTR,19 00 19 00 1c 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 6b 63 2d 31 32 6b 64 6d 71 64 6a } //01 00 
		$a_01_1 = {73 77 64 73 6d 6e 42 63 60 64 71 67 53 73 64 46 } //01 00 
		$a_01_2 = {73 77 64 73 6d 6e 42 63 60 64 71 67 53 73 64 52 } //01 00 
		$a_01_3 = {40 72 72 64 62 6e 71 4f 64 73 60 64 71 42 } //01 00 
		$a_01_4 = {77 44 62 6e 6b 6b 40 6b 60 74 73 71 68 55 } //01 00 
		$a_01_5 = {40 64 62 71 74 6e 72 64 51 63 6d 68 45 } //01 00 
		$a_01_6 = {64 62 71 74 6e 72 64 51 65 6e 64 79 68 52 } //01 00 
		$a_01_7 = {64 62 71 74 6e 72 64 51 63 60 6e 4b } //01 00 
		$a_01_8 = {64 62 71 74 6e 72 64 51 6a 62 6e 4b } //01 00 
		$a_01_9 = {64 62 71 74 6e 72 64 51 64 64 71 45 } //01 00 
		$a_01_10 = {40 72 64 6c 60 4d 64 62 71 74 6e 72 64 51 6c 74 6d 44 } //01 00 
		$a_01_11 = {40 78 71 6e 73 62 64 71 68 43 6c 64 73 72 78 52 73 64 46 } //01 00 
		$a_01_12 = {40 67 73 60 4f 6f 6c 64 53 73 64 46 } //01 00 
		$a_01_13 = {40 78 71 6e 73 62 64 71 68 43 72 76 6e 63 6d 68 56 73 64 46 } //01 00 
		$a_01_14 = {64 63 6e 4c 71 6e 71 71 44 73 64 52 } //01 00 
		$a_01_15 = {40 64 6d 68 4b 63 6d 60 6c 6c 6e 42 73 64 46 } //01 00 
		$a_01_16 = {40 64 6b 68 45 64 73 64 6b 64 43 } //01 00 
		$a_01_17 = {40 64 6b 68 45 64 73 60 64 71 42 } //01 00 
		$a_01_18 = {64 6b 68 45 63 60 64 51 } //01 00 
		$a_01_19 = {64 6b 68 45 64 73 68 71 56 } //01 00 
		$a_01_20 = {64 6b 63 6d 60 47 64 72 6e 6b 42 } //01 00 
		$a_01_21 = {71 64 73 6d 68 6e 4f 64 6b 68 45 73 64 52 } //01 00 
		$a_01_22 = {6b 6b 63 2d 6f 6b 67 64 66 60 6c 68 } //01 00 
		$a_01_23 = {72 73 72 68 77 44 67 73 60 4f 78 71 6e 73 62 64 71 68 43 64 71 74 52 64 6a 60 4c } //01 00 
		$a_01_24 = {6b 6b 63 2d 31 32 6b 6b 64 67 72 } //01 00 
		$a_01_25 = {40 64 73 74 62 64 77 44 6b 6b 64 67 52 } //01 00 
		$a_01_26 = {40 64 6b 61 60 73 74 62 64 77 44 63 6d 68 45 } //01 00 
		$a_01_27 = {40 67 73 60 4f 71 64 63 6b 6e 45 6b 60 68 62 64 6f 52 73 64 46 47 52 } //00 00 
	condition:
		any of ($a_*)
 
}