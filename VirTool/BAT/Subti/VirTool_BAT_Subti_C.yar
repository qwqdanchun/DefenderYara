
rule VirTool_BAT_Subti_C{
	meta:
		description = "VirTool:BAT/Subti.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //01 00  :Zone.Identifier
		$a_00_1 = {46 00 75 00 63 00 6b 00 20 00 41 00 56 00 73 00 } //01 00  Fuck AVs
		$a_00_2 = {49 6e 6a 65 63 74 69 6f 6e 50 65 72 73 69 73 74 65 6e 63 65 } //01 00  InjectionPersistence
		$a_00_3 = {52 65 6d 6f 76 65 5a 6f 6e 65 49 64 65 6e 74 69 66 69 65 72 } //01 00  RemoveZoneIdentifier
		$a_00_4 = {54 72 79 49 6e 6a 65 63 74 } //01 00  TryInject
		$a_00_5 = {41 64 64 54 6f 53 74 61 72 74 75 70 } //01 00  AddToStartup
		$a_00_6 = {52 75 6e 50 45 } //01 00  RunPE
		$a_00_7 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_01_8 = {65 00 63 00 68 00 6f 00 20 00 44 00 4f 00 4e 00 54 00 20 00 43 00 4c 00 4f 00 53 00 45 00 20 00 54 00 48 00 49 00 53 00 20 00 57 00 49 00 4e 00 44 00 4f 00 57 00 21 00 } //00 00  echo DONT CLOSE THIS WINDOW!
	condition:
		any of ($a_*)
 
}