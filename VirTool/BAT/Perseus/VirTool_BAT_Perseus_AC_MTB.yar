
rule VirTool_BAT_Perseus_AC_MTB{
	meta:
		description = "VirTool:BAT/Perseus.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {51 00 57 00 35 00 68 00 63 00 6d 00 4e 00 6f 00 65 00 55 00 64 00 79 00 59 00 57 00 4a 00 69 00 5a 00 58 00 49 00 6c 00 } //01 00  QW5hcmNoeUdyYWJiZXIl
		$a_00_1 = {5f 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 24 00 } //01 00  _Encrypted$
		$a_00_2 = {50 52 4f 4a 45 43 54 5f 44 5f 42 59 50 41 53 53 } //01 00  PROJECT_D_BYPASS
		$a_02_3 = {54 6f 6b 65 6e 47 72 61 62 62 65 72 90 02 20 41 6e 61 72 63 68 79 47 72 61 62 62 65 72 90 00 } //01 00 
		$a_00_4 = {53 65 72 76 69 63 65 00 57 65 62 68 6f 6f 6b } //01 00 
		$a_00_5 = {70 62 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  pbDebuggerPresent
		$a_00_6 = {5d 04 00 } //00 e6 
	condition:
		any of ($a_*)
 
}