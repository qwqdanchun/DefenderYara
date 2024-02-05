
rule TrojanDropper_Win32_Tofsee_gen_A{
	meta:
		description = "TrojanDropper:Win32/Tofsee.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {83 c7 03 74 1a e8 90 01 02 00 00 33 d2 6a 19 59 f7 f1 80 c2 61 88 94 90 00 } //02 00 
		$a_01_1 = {37 38 2e 31 30 39 2e 31 36 2e 32 35 30 00 } //01 00 
		$a_01_2 = {6e 65 74 73 66 2e 69 6e 66 00 } //01 00 
		$a_01_3 = {6e 65 74 73 66 5f 6d 2e 69 6e 66 0d 0a } //01 00 
		$a_01_4 = {5c 5c 2e 5c 50 61 73 73 54 68 72 75 00 } //01 00 
		$a_01_5 = {5c 00 5c 00 2e 00 5c 00 72 00 6f 00 74 00 63 00 65 00 74 00 6f 00 72 00 70 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}