
rule VirTool_BAT_Injector_GE{
	meta:
		description = "VirTool:BAT/Injector.GE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 4f 41 44 45 52 2e 72 65 73 6f 75 72 63 65 73 00 00 00 0d 4c 00 4f 00 41 00 44 00 45 00 52 00 00 0b 49 00 4d 00 41 00 47 00 45 00 00 07 4b 00 45 00 59 00 } //01 00 
		$a_01_1 = {72 01 00 00 00 d0 02 00 00 02 28 03 00 00 0a 6f 04 00 00 0a 73 05 00 00 0a 0a 06 72 0f 00 00 70 6f 06 00 00 0a 74 04 00 00 01 0b 07 28 04 00 00 06 0c 73 07 00 00 0a } //01 00 
		$a_01_2 = {08 09 9a 0a 06 6f 11 00 00 0a 72 6f 00 00 70 28 12 00 00 0a 16 fe 01 13 04 11 04 2d 54 06 6f 13 00 00 0a 8e 69 17 fe 01 16 fe 01 13 04 11 04 2d 40 06 6f 13 00 00 0a 16 } //01 00 
		$a_01_3 = {7e 01 00 00 04 8d 08 00 00 01 0a 16 0b 16 0c 38 bc 00 00 00 16 0d 38 91 00 00 00 00 02 09 08 6f 15 00 00 0a 13 04 16 13 05 2b 63 11 05 13 07 11 07 45 04 00 00 00 02 00 00 00 12 00 00 00 22 00 00 00 32 00 00 00 2b 40 06 07 25 17 58 0b 12 04 28 16 00 00 0a 9c 2b 30 } //00 00 
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}