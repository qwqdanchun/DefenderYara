
rule Backdoor_Win32_Sdbot_gen_G{
	meta:
		description = "Backdoor:Win32/Sdbot.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 07 00 00 05 00 "
		
	strings :
		$a_03_0 = {8b 00 33 d2 b9 3c 00 00 00 f7 f1 89 85 90 02 40 83 c1 02 89 8d 90 02 10 33 d2 b9 a0 05 00 00 f7 f1 90 00 } //02 00 
		$a_03_1 = {33 d2 b9 25 00 00 00 f7 f1 89 15 90 01 04 68 90 01 04 ff 15 90 00 } //02 00 
		$a_03_2 = {6a 00 6a 05 68 90 01 04 8b 95 90 01 04 52 ff 15 90 01 04 83 f8 05 74 90 00 } //03 00 
		$a_01_3 = {85 13 3c 9e a2 00 } //01 00 
		$a_03_4 = {30 30 37 00 30 77 6e 33 64 90 02 04 30 77 6e 65 64 90 00 } //01 00 
		$a_01_5 = {25 73 5c 41 64 6d 69 6e 24 5c } //01 00  %s\Admin$\
		$a_00_6 = {4d 79 64 6f 6f 6d 20 } //01 00  Mydoom 
	condition:
		any of ($a_*)
 
}