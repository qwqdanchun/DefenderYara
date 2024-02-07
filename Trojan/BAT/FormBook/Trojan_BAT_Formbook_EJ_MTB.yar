
rule Trojan_BAT_Formbook_EJ_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 0b 00 00 0a 00 "
		
	strings :
		$a_81_0 = {24 38 61 31 31 31 35 33 36 2d 31 62 66 34 2d 34 32 39 34 2d 61 66 38 30 2d 35 65 31 33 32 38 34 31 32 66 33 32 } //0a 00  $8a111536-1bf4-4294-af80-5e1328412f32
		$a_81_1 = {24 33 36 38 66 33 63 62 66 2d 37 63 32 32 2d 34 62 34 39 2d 61 62 32 63 2d 34 33 64 39 61 35 36 33 32 62 37 36 } //05 00  $368f3cbf-7c22-4b49-ab2c-43d9a5632b76
		$a_81_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //05 00  get_CurrentDomain
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //05 00  CreateInstance
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_5 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_9 = {48 69 64 65 4d 6f 64 75 6c 65 4e 61 6d 65 41 74 74 72 69 62 75 74 65 } //01 00  HideModuleNameAttribute
		$a_81_10 = {52 65 70 6c 61 63 65 } //00 00  Replace
	condition:
		any of ($a_*)
 
}