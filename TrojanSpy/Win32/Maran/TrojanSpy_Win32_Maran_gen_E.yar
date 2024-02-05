
rule TrojanSpy_Win32_Maran_gen_E{
	meta:
		description = "TrojanSpy:Win32/Maran.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {57 ff d3 83 c4 14 85 c0 74 09 56 57 e8 90 01 04 59 59 68 90 01 04 57 ff d3 59 85 c0 59 74 10 56 57 e8 90 01 04 83 25 90 01 04 00 59 59 57 6a 00 ff 35 90 01 04 ff 15 90 00 } //03 00 
		$a_03_1 = {80 65 9c 00 6a 18 59 33 c0 8d 7d 9d 68 04 01 00 00 f3 ab 66 ab aa 8d 45 9c 50 ff 15 90 01 04 8d 45 9c 68 38 30 40 00 50 e8 90 00 } //02 00 
		$a_01_2 = {49 50 3d 00 00 00 00 0a 46 54 50 00 00 00 00 50 41 53 53 00 00 00 00 55 53 45 52 00 00 00 00 57 53 50 53 74 61 72 74 75 70 00 } //01 00 
		$a_01_3 = {6d 65 73 73 69 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}