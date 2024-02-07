
rule VirTool_BAT_Quiltran_A{
	meta:
		description = "VirTool:BAT/Quiltran.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 53 49 4c 45 4e 54 54 52 49 4e 49 54 59 5c 53 49 4c 45 4e 54 54 52 49 4e 49 54 59 } //01 00  \SILENTTRINITY\SILENTTRINITY
		$a_01_1 = {3c 41 64 64 50 79 74 68 6f 6e 4c 69 62 72 61 72 69 65 73 54 6f 53 79 73 4d 65 74 61 50 61 74 68 3e } //01 00  <AddPythonLibrariesToSysMetaPath>
		$a_01_2 = {43 72 65 61 74 65 45 6e 67 69 6e 65 00 } //01 00 
		$a_01_3 = {45 43 44 48 4b 65 79 45 78 63 68 61 6e 67 65 00 } //01 00  䍅䡄敋䕹捸慨杮e
		$a_01_4 = {47 65 74 52 65 73 6f 75 72 63 65 49 6e 5a 69 70 00 } //01 00 
		$a_01_5 = {52 75 6e 49 50 59 45 6e 67 69 6e 65 00 } //01 00 
		$a_01_6 = {46 00 6f 00 75 00 6e 00 64 00 20 00 65 00 6d 00 62 00 65 00 64 00 64 00 65 00 64 00 20 00 49 00 50 00 59 00 20 00 73 00 74 00 64 00 6c 00 69 00 62 00 20 00 3a 00 20 00 7b 00 30 00 7d 00 } //01 00  Found embedded IPY stdlib : {0}
		$a_03_7 = {61 00 70 00 70 00 65 00 6e 00 64 00 90 02 04 6d 00 65 00 74 00 61 00 5f 00 70 00 61 00 74 00 68 00 90 02 04 70 00 61 00 74 00 68 00 90 00 } //01 00 
		$a_01_8 = {72 00 65 00 73 00 6f 00 6c 00 76 00 65 00 20 00 61 00 73 00 73 00 65 00 6d 00 62 00 6c 00 69 00 65 00 73 00 20 00 62 00 79 00 20 00 73 00 74 00 61 00 67 00 69 00 6e 00 67 00 20 00 7a 00 69 00 70 00 } //01 00  resolve assemblies by staging zip
		$a_01_9 = {49 00 72 00 6f 00 6e 00 50 00 79 00 74 00 68 00 6f 00 6e 00 44 00 4c 00 4c 00 } //01 00  IronPythonDLL
		$a_01_10 = {41 00 74 00 74 00 65 00 6d 00 70 00 74 00 69 00 6e 00 67 00 20 00 48 00 54 00 54 00 50 00 20 00 50 00 4f 00 53 00 54 00 20 00 74 00 6f 00 20 00 7b 00 30 00 7d 00 } //01 00  Attempting HTTP POST to {0}
		$a_03_11 = {44 00 45 00 42 00 55 00 47 00 90 02 04 4d 00 61 00 69 00 6e 00 2e 00 70 00 79 00 90 02 04 45 00 78 00 65 00 63 00 75 00 74 00 65 00 90 00 } //00 00 
		$a_00_12 = {ce 09 00 00 05 a5 6f 61 } //61 5f 
	condition:
		any of ($a_*)
 
}