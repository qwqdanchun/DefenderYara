
rule Trojan_BAT_Bladabindi_EB_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 02 00 00 0a 00 "
		
	strings :
		$a_00_0 = {06 1e 58 4a 93 11 04 33 0e 06 06 4a 1f 3a 5a 06 1e 58 4a 58 54 2b 12 06 1e 58 06 1e 58 4a 17 58 54 06 1e 58 4a 1f 3a 32 d2 06 1a 58 06 1a 58 4a 17 59 54 16 3a 9d 00 00 00 06 1a 58 4a 16 2f 9a } //03 00 
		$a_81_1 = {5a 53 44 52 54 47 48 55 4a 4b 4c 4f 49 4b 4a 48 47 46 } //00 00  ZSDRTGHUJKLOIKJHGF
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Bladabindi_EB_MTB_2{
	meta:
		description = "Trojan:BAT/Bladabindi.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0e 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 63 34 35 39 65 63 32 34 2d 66 32 62 34 2d 39 65 38 36 2d 39 61 65 34 2d 62 39 33 39 34 32 63 39 30 65 39 36 } //14 00  $c459ec24-f2b4-9e86-9ae4-b93942c90e96
		$a_00_1 = {24 61 63 38 30 37 34 30 35 2d 35 63 32 35 2d 31 61 32 38 2d 31 61 63 31 2d 34 64 31 37 33 65 37 34 38 62 33 32 } //14 00  $ac807405-5c25-1a28-1ac1-4d173e748b32
		$a_00_2 = {24 63 34 31 34 33 31 34 65 2d 31 62 37 31 2d 34 35 62 63 2d 62 66 32 38 2d 66 64 31 39 36 65 33 33 64 64 32 61 } //14 00  $c414314e-1b71-45bc-bf28-fd196e33dd2a
		$a_00_3 = {24 39 34 38 61 39 63 30 31 2d 62 36 63 64 2d 34 33 31 64 2d 38 36 65 64 2d 31 35 37 35 64 65 63 33 64 38 35 32 } //01 00  $948a9c01-b6cd-431d-86ed-1575dec3d852
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