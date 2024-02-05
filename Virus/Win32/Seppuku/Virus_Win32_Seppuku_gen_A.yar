
rule Virus_Win32_Seppuku_gen_A{
	meta:
		description = "Virus:Win32/Seppuku.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 ee 05 ad 0d 20 20 20 20 3d 2e 65 78 65 74 90 02 10 3d 2e 73 63 72 90 00 } //01 00 
		$a_02_1 = {66 81 38 4d 5a 0f 85 90 01 04 66 83 78 08 04 0f 85 90 01 04 66 81 78 38 52 42 0f 84 90 01 04 8b 70 3c 03 f0 66 81 3e 50 45 0f 85 90 01 04 ff 76 3c ff b5 90 01 04 ff 95 90 01 04 ff b5 90 01 04 ff 95 90 01 04 59 8b 85 90 01 04 05 90 01 02 00 00 e8 90 01 04 91 e8 90 01 04 0b c0 90 00 } //01 00 
		$a_02_2 = {89 46 10 89 46 08 5a 8b 46 10 03 46 0c 89 47 50 81 4e 24 20 00 00 a0 8b 85 90 01 04 66 c7 40 38 52 42 8d b5 90 01 04 87 fa 8b df 03 9d 90 01 04 8b fb b9 90 01 02 00 00 f3 a4 c7 85 90 01 04 00 00 00 00 90 00 } //01 00 
		$a_02_3 = {66 35 20 83 66 81 f3 b8 ed fe ce 75 90 01 01 33 c8 33 d3 4f 75 90 01 01 f7 d2 f7 d1 8b c2 c1 c0 10 66 8b c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}