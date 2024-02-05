
rule VirTool_BAT_Injector_YG_bit{
	meta:
		description = "VirTool:BAT/Injector.YG!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {06 02 07 6f 20 00 00 0a 03 07 03 6f 17 00 00 0a 5d 6f 20 00 00 0a 61 d1 6f 21 00 00 0a 26 07 17 58 0b } //01 00 
		$a_01_1 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 68 65 78 53 74 72 69 6e 67 00 } //01 00 
		$a_01_2 = {00 62 61 73 65 36 34 00 6b 65 79 00 72 65 70 6c 61 63 65 00 } //01 00 
		$a_01_3 = {00 4c 6f 61 64 00 4d 65 74 68 6f 64 49 6e 66 6f 00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 4d 65 74 68 6f 64 42 61 73 65 00 49 6e 76 6f 6b 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}