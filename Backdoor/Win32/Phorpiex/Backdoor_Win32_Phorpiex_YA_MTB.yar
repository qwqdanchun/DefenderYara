
rule Backdoor_Win32_Phorpiex_YA_MTB{
	meta:
		description = "Backdoor:Win32/Phorpiex.YA!MTB,SIGNATURE_TYPE_PEHSTR,1e 00 1e 00 19 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 20 63 61 6e 20 72 75 69 6e 20 79 6f 75 72 20 6c 69 66 65 } //01 00  I can ruin your life
		$a_01_1 = {49 20 67 6f 74 20 61 6c 6c 20 79 6f 75 72 20 64 61 74 61 } //01 00  I got all your data
		$a_01_2 = {49 20 72 65 63 6f 72 64 65 64 20 79 6f 75 } //01 00  I recorded you
		$a_01_3 = {59 6f 75 20 67 6f 74 20 72 65 63 6f 72 64 65 64 } //01 00  You got recorded
		$a_01_4 = {49 20 63 61 6e 20 70 75 62 6c 69 73 68 20 65 76 65 72 79 74 68 69 6e 67 } //01 00  I can publish everything
		$a_01_5 = {59 6f 75 20 64 69 72 74 79 20 70 65 72 76 65 72 74 } //01 00  You dirty pervert
		$a_01_6 = {59 6f 75 20 67 6f 74 20 69 6e 66 65 63 74 65 64 } //01 00  You got infected
		$a_01_7 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 6e 66 65 63 74 65 64 } //01 00  Your computer infected
		$a_01_8 = {53 74 6f 70 20 6d 61 73 74 72 75 62 61 74 65 } //01 00  Stop mastrubate
		$a_01_9 = {52 65 63 6f 72 64 65 64 20 79 6f 75 20 6d 61 73 74 72 75 62 61 74 69 6e 67 } //01 00  Recorded you mastrubating
		$a_01_10 = {56 69 64 65 6f 20 6f 66 20 79 6f 75 20 6d 61 73 74 72 75 62 61 74 69 6e 67 } //01 00  Video of you mastrubating
		$a_01_11 = {42 65 74 74 65 72 20 70 61 79 20 6d 65 } //01 00  Better pay me
		$a_01_12 = {44 6f 6e 27 74 20 69 67 6e 6f 72 65 20 74 68 69 73 20 6d 61 69 6c } //01 00  Don't ignore this mail
		$a_01_13 = {52 65 63 6f 72 64 65 64 20 79 6f 75 } //01 00  Recorded you
		$a_01_14 = {53 74 6f 70 20 77 61 74 63 68 69 6e 67 20 70 6f 72 6e } //01 00  Stop watching porn
		$a_01_15 = {53 74 6f 70 20 76 69 73 69 74 20 70 6f 72 6e 20 73 69 74 65 73 } //01 00  Stop visit porn sites
		$a_01_16 = {49 20 6b 6e 6f 77 20 79 6f 75 72 20 70 61 73 73 77 6f 72 64 } //01 00  I know your password
		$a_01_17 = {49 20 67 6f 74 20 76 69 64 65 6f 20 6f 66 20 79 6f 75 } //01 00  I got video of you
		$a_01_18 = {53 65 65 6e 20 79 6f 75 20 6d 61 73 74 72 75 62 61 74 69 6e 67 } //01 00  Seen you mastrubating
		$a_01_19 = {49 20 6b 6e 6f 77 20 65 76 65 72 79 74 68 69 6e 67 20 61 62 6f 75 74 20 79 6f 75 } //01 00  I know everything about you
		$a_01_20 = {43 68 61 6e 63 65 20 74 6f 20 73 61 76 65 20 79 6f 75 72 20 6c 69 66 65 } //01 00  Chance to save your life
		$a_01_21 = {49 20 77 6f 6e 27 74 20 61 73 6b 20 61 67 61 69 6e } //01 00  I won't ask again
		$a_01_22 = {49 20 77 6f 6e 27 74 20 77 61 72 6e 20 79 6f 75 20 61 67 61 69 6e } //01 00  I won't warn you again
		$a_01_23 = {53 61 76 65 20 79 6f 75 72 20 61 73 73 } //19 00  Save your ass
		$a_01_24 = {25 00 6c 00 73 00 5c 00 25 00 64 00 25 00 64 00 25 00 64 00 25 00 64 00 2e 00 6a 00 70 00 67 00 } //00 00  %ls\%d%d%d%d.jpg
	condition:
		any of ($a_*)
 
}