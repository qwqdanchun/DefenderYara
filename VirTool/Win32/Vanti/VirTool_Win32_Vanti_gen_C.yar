
rule VirTool_Win32_Vanti_gen_C{
	meta:
		description = "VirTool:Win32/Vanti.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 41 56 3b 52 41 56 3b 41 56 50 3b 4b 41 56 53 56 43 3b 00 } //01 00  䅋㭖䅒㭖噁㭐䅋卖䍖;
		$a_01_1 = {4b 41 56 73 79 73 } //01 00  KAVsys
		$a_01_2 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 00 00 00 00 48 49 44 45 50 52 45 46 49 58 00 } //01 00 
		$a_02_3 = {81 e6 ff ff 00 00 68 90 01 04 33 c6 6a 00 68 03 00 1f 00 a3 90 01 04 ff 15 90 01 04 85 c0 5e 0f 85 91 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}