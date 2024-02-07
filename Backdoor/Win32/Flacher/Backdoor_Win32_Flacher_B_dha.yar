
rule Backdoor_Win32_Flacher_B_dha{
	meta:
		description = "Backdoor:Win32/Flacher.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {8a 08 40 84 c9 75 f9 2b c2 53 8b d8 80 7c 3b ff 90 01 01 75 3e 90 00 } //03 00 
		$a_00_1 = {74 09 80 34 30 7e 40 3b c7 72 f7 6a 00 8d 45 f0 50 57 56 53 ff 15 20 f2 43 00 53 ff 15 10 f2 43 00 33 c0 85 ff 74 09 80 34 30 7e 40 3b c7 } //01 00 
		$a_00_2 = {65 78 65 63 5f 72 65 73 63 75 65 } //01 00  exec_rescue
		$a_00_3 = {74 00 73 00 74 00 61 00 6d 00 70 00 00 00 00 00 74 00 61 00 73 00 6b 00 6b 00 00 00 74 00 61 00 73 00 6b 00 6c 00 00 00 73 00 68 00 72 00 65 00 64 00 00 00 76 00 6f 00 6c 00 00 00 76 00 65 00 72 00 69 00 66 00 79 00 00 00 00 00 74 00 79 00 70 00 65 00 00 00 00 00 74 00 69 00 6d 00 65 00 72 00 00 00 73 00 74 00 61 00 72 00 74 00 00 00 73 00 68 00 69 00 66 00 74 00 } //01 00 
		$a_00_4 = {72 75 6e 66 69 6c 65 3a 20 63 6f 75 6c 64 6e 27 74 20 66 69 6e 64 20 73 68 65 6c 6c 65 78 65 63 75 74 65 65 78 61 2f 77 20 69 6e 20 73 68 65 6c 6c 33 32 2e 64 6c 6c 21 } //01 00  runfile: couldn't find shellexecuteexa/w in shell32.dll!
		$a_00_5 = {64 65 62 75 67 3a 20 63 61 6e 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 20 66 6f 72 20 70 74 72 66 69 6c 65 61 72 72 61 79 21 } //00 00  debug: cannot allocate memory for ptrfilearray!
		$a_00_6 = {5d 04 00 } //00 b4 
	condition:
		any of ($a_*)
 
}