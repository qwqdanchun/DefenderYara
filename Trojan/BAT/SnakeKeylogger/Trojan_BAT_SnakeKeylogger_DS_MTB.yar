
rule Trojan_BAT_SnakeKeylogger_DS_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0e 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 64 38 30 30 39 39 30 61 2d 31 33 39 39 2d 34 36 31 33 2d 38 31 35 66 2d 66 38 30 61 39 38 61 33 65 34 62 65 } //14 00  $d800990a-1399-4613-815f-f80a98a3e4be
		$a_00_1 = {24 36 36 61 66 30 32 33 39 2d 37 38 32 30 2d 34 65 66 63 2d 61 31 32 30 2d 32 65 30 34 65 32 36 32 30 36 31 61 } //14 00  $66af0239-7820-4efc-a120-2e04e262061a
		$a_00_2 = {24 62 31 31 39 66 36 34 65 2d 32 63 36 37 2d 34 32 66 63 2d 62 31 39 38 2d 36 64 34 65 30 39 32 33 62 64 37 66 } //14 00  $b119f64e-2c67-42fc-b198-6d4e0923bd7f
		$a_00_3 = {24 33 30 39 66 32 32 63 37 2d 35 35 32 39 2d 34 37 33 66 2d 38 62 33 30 2d 64 32 65 38 39 32 37 31 31 37 30 39 } //01 00  $309f22c7-5529-473f-8b30-d2e892711709
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_10 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}