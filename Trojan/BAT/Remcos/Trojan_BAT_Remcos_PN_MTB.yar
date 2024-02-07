
rule Trojan_BAT_Remcos_PN_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 09 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 64 34 62 36 38 37 64 65 2d 37 64 37 38 2d 34 32 36 65 2d 39 64 38 61 2d 35 63 65 65 63 37 64 38 37 35 63 62 } //14 00  $d4b687de-7d78-426e-9d8a-5ceec7d875cb
		$a_81_1 = {24 35 34 39 30 34 36 35 35 2d 63 32 38 36 2d 34 65 33 39 2d 39 34 33 34 2d 32 31 65 35 62 35 37 61 31 39 33 63 } //01 00  $54904655-c286-4e39-9434-21e5b57a193c
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {53 51 4c 54 75 74 6f 72 69 61 6c 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  SQLTutorial.Resources.resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {6e 64 74 69 61 5f 4c 69 76 65 5f 53 65 72 76 65 72 2e 52 65 73 6f 75 72 63 65 73 } //01 00  ndtia_Live_Server.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}