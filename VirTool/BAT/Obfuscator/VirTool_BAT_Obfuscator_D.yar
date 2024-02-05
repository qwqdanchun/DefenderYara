
rule VirTool_BAT_Obfuscator_D{
	meta:
		description = "VirTool:BAT/Obfuscator.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {67 65 74 5f 48 4b 43 55 5f 4c 6f 63 } //01 00 
		$a_00_1 = {67 65 74 5f 55 70 64 61 74 65 50 61 73 73 77 6f 72 64 } //01 00 
		$a_00_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 42 00 75 00 69 00 6c 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_3 = {24 00 23 00 25 00 23 00 27 00 26 00 28 00 26 00 29 00 26 00 2a 00 26 00 2b 00 26 00 2c 00 2b 00 2d 00 26 00 2e 00 26 00 2f 00 26 00 } //01 00 
		$a_02_4 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 90 02 03 5c 00 64 00 2b 00 2e 00 5c 00 64 00 2b 00 2e 00 5c 00 64 00 2b 00 2e 00 5c 00 64 00 2b 00 90 02 02 47 00 45 00 54 00 90 00 } //01 00 
		$a_00_5 = {5d 00 00 25 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}