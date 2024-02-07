
rule Virus_Win32_Alvabrig_gen_A{
	meta:
		description = "Virus:Win32/Alvabrig.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 0c 8b 40 0c 8b 70 1c ad 8b 40 08 eb 09 8b 40 34 8d 40 7c 8b 40 3c 95 e8 00 00 00 00 5e 90 } //01 00 
		$a_01_1 = {81 7f 08 70 00 65 00 } //01 00 
		$a_01_2 = {81 7f f9 00 73 00 66 } //01 00 
		$a_01_3 = {25 00 73 00 5c 00 64 00 74 00 77 00 35 00 64 00 5c 00 46 00 72 00 6f 00 6d 00 41 00 63 00 74 00 69 00 76 00 65 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 5f 00 25 00 30 00 38 00 64 00 5f 00 25 00 73 00 } //01 00  %s\dtw5d\FromActiveX%08X%08X_%08d_%s
	condition:
		any of ($a_*)
 
}