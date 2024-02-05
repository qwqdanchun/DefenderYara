
rule VirTool_BAT_Injector_IN{
	meta:
		description = "VirTool:BAT/Injector.IN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 61 72 70 61 74 69 2e 65 78 65 00 43 61 72 70 61 74 69 00 } //01 00 
		$a_01_1 = {79 6f 75 6d 65 68 69 6d 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 00 3c 4d 6f 64 75 6c 65 3e 00 } //01 00 
		$a_01_2 = {47 5a 69 70 53 74 72 65 61 6d 00 53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e 00 } //01 00 
		$a_01_3 = {1e 2c 3d 20 a0 01 00 00 8d 01 00 00 01 25 d0 31 00 00 04 18 2d 2b 26 26 80 32 00 00 04 18 2c 20 20 44 01 00 00 25 2c e0 25 2c dd } //00 00 
	condition:
		any of ($a_*)
 
}