
rule Trojan_BAT_AgentTesla_EF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {57 5f a2 1f 09 0f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 75 00 00 00 96 00 00 00 f4 00 00 00 b7 } //03 00 
		$a_81_1 = {67 42 53 31 42 31 31 44 52 69 49 59 6a 36 47 6d 39 48 2b 31 68 51 3d 3d } //03 00  gBS1B11DRiIYj6Gm9H+1hQ==
		$a_81_2 = {35 66 50 33 59 33 2b 61 71 30 33 50 33 69 30 54 44 54 51 71 44 51 3d 3d } //03 00  5fP3Y3+aq03P3i0TDTQqDQ==
		$a_81_3 = {32 43 74 50 45 6d 50 33 4a 42 51 5a 61 72 43 64 44 7a 59 6c 51 41 3d 3d } //03 00  2CtPEmP3JBQZarCdDzYlQA==
		$a_81_4 = {6d 6b 64 69 72 } //03 00  mkdir
		$a_81_5 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //00 00  System.Security.Cryptography
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EF_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 45 54 41 49 4c 53 20 50 41 43 4b 49 4e 47 20 5f 4c 4f 41 44 49 4e 47 20 5f 43 4f 4e 54 41 49 4e 45 52 } //01 00  DETAILS PACKING _LOADING _CONTAINER
		$a_81_1 = {4c 69 63 65 6e 73 65 20 50 61 6e 65 6c } //01 00  License Panel
		$a_81_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_81_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_4 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_81_5 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_81_6 = {42 69 74 6d 61 70 } //01 00  Bitmap
		$a_81_7 = {67 65 74 5f 42 } //01 00  get_B
		$a_81_8 = {67 65 74 5f 47 } //01 00  get_G
		$a_81_9 = {67 65 74 5f 41 } //01 00  get_A
		$a_81_10 = {67 65 74 5f 52 } //00 00  get_R
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EF_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {11 06 11 06 06 94 11 06 08 94 58 20 00 01 00 00 5d 94 0d 11 07 07 03 07 91 09 61 d2 9c 07 17 58 0b 07 03 8e 69 32 } //01 00 
		$a_81_1 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_6 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_7 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //01 00  ClassLibrary
		$a_81_8 = {43 6f 70 79 54 6f } //01 00  CopyTo
		$a_81_9 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EF_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 11 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 30 65 32 64 61 30 36 2d 30 36 37 63 2d 34 32 65 65 2d 38 61 38 61 2d 39 30 34 33 38 38 34 33 63 32 33 63 } //14 00  $00e2da06-067c-42ee-8a8a-90438843c23c
		$a_81_1 = {24 38 37 39 37 38 37 36 37 2d 35 32 33 64 2d 34 62 37 66 2d 62 63 30 64 2d 39 64 35 33 39 66 34 30 31 65 33 61 } //14 00  $87978767-523d-4b7f-bc0d-9d539f401e3a
		$a_81_2 = {24 35 66 38 31 61 33 61 31 2d 66 64 33 64 2d 34 35 36 30 2d 39 66 64 65 2d 65 35 65 64 34 34 63 32 37 62 65 37 } //14 00  $5f81a3a1-fd3d-4560-9fde-e5ed44c27be7
		$a_81_3 = {24 63 38 32 30 39 36 64 66 2d 31 64 32 35 2d 34 30 65 38 2d 39 39 36 38 2d 66 30 31 35 31 66 65 62 39 30 62 39 } //05 00  $c82096df-1d25-40e8-9968-f0151feb90b9
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //05 00  CreateInstance
		$a_81_5 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_6 = {42 69 67 56 69 64 2e 52 65 73 6f 75 72 63 65 73 } //01 00  BigVid.Resources
		$a_81_7 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //01 00  aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
		$a_81_8 = {24 73 61 66 65 70 72 6f 6a 65 63 74 6e 61 6d 65 24 2e 52 65 73 6f 75 72 63 65 73 } //01 00  $safeprojectname$.Resources
		$a_81_9 = {44 53 5f 41 53 53 5f 32 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  DS_ASS_2.My.Resources
		$a_81_10 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_12 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_13 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_14 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_15 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}