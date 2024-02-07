
rule Trojan_BAT_AgentTesla_FW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0a 00 00 14 00 "
		
	strings :
		$a_03_0 = {43 6f 6e 73 6f 6c 65 41 70 70 90 02 0f 2e 67 2e 72 65 73 6f 75 72 63 65 73 90 00 } //14 00 
		$a_03_1 = {74 61 72 20 90 02 0f 2e 67 2e 72 65 73 6f 75 72 63 65 73 90 00 } //14 00 
		$a_03_2 = {50 61 79 6d 65 6e 74 90 02 0f 2e 67 2e 72 65 73 6f 75 72 63 65 73 90 00 } //14 00 
		$a_03_3 = {52 65 71 75 69 72 65 6d 65 6e 74 90 02 0f 2e 67 2e 72 65 73 6f 75 72 63 65 73 90 00 } //01 00 
		$a_81_4 = {63 3a 5c 73 72 69 5c 4d 65 73 73 61 67 65 2e 74 78 74 } //01 00  c:\sri\Message.txt
		$a_81_5 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_03_6 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 90 02 0f 2d 31 90 00 } //01 00 
		$a_81_7 = {42 65 67 69 6e 49 6e 76 6f 6b 65 } //01 00  BeginInvoke
		$a_81_8 = {52 65 73 6f 6c 76 65 4d 65 74 68 6f 64 } //01 00  ResolveMethod
		$a_81_9 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //00 00  get_Assembly
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_FW_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 09 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 32 66 38 34 31 38 32 63 2d 64 62 39 31 2d 34 31 38 37 2d 61 33 38 31 2d 38 32 31 63 62 35 31 31 32 61 30 39 } //14 00  $2f84182c-db91-4187-a381-821cb5112a09
		$a_81_1 = {24 33 32 38 33 30 30 63 31 2d 35 35 65 39 2d 34 61 30 61 2d 38 65 35 35 2d 37 32 33 30 36 36 33 30 31 35 32 65 } //14 00  $328300c1-55e9-4a0a-8e55-72306630152e
		$a_81_2 = {24 65 38 39 36 64 31 31 62 2d 33 64 38 64 2d 34 34 34 35 2d 38 32 32 33 2d 66 31 37 36 65 39 65 61 38 34 36 34 } //01 00  $e896d11b-3d8d-4445-8223-f176e9ea8464
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_5 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}