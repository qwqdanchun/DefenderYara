
rule VirTool_BAT_Injector_HD{
	meta:
		description = "VirTool:BAT/Injector.HD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 20 d7 b4 f1 f1 5a 66 20 e7 86 0f 85 5a 20 52 a0 23 ac 66 20 fa 80 49 c3 20 75 96 b1 a2 20 68 a3 0f 5c 59 } //01 00 
		$a_01_1 = {61 58 20 44 0c 00 00 28 18 00 00 06 5a 65 65 20 48 0c 00 00 28 18 00 00 06 58 66 66 59 58 } //01 00 
		$a_01_2 = {24 31 33 61 37 64 35 32 35 2d 65 35 32 34 2d 34 35 34 37 2d 61 66 39 31 2d 66 61 61 39 61 61 34 62 38 37 64 37 00 } //01 00 
		$a_01_3 = {41 7a 75 72 61 4d 61 6e 2e 50 72 6f 70 65 72 74 69 65 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}