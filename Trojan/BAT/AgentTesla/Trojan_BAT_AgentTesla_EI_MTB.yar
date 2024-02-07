
rule Trojan_BAT_AgentTesla_EI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {0a 00 06 16 73 90 01 03 0a 0b 00 73 90 01 03 0a 0c 00 20 90 01 03 00 8d 90 01 03 01 0d 16 13 04 2b 14 00 08 09 16 11 05 6f 90 01 03 0a 00 11 04 11 05 58 13 04 00 07 09 16 20 90 01 03 00 6f 90 01 03 0a 25 13 05 16 fe 02 13 06 11 06 2d d3 28 73 00 00 0a 08 6f 90 01 03 0a 16 11 04 6f 90 01 03 0a 13 07 de 21 90 00 } //01 00 
		$a_81_1 = {44 65 63 6f 6d 70 72 65 73 73 47 5a 69 70 } //01 00  DecompressGZip
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_3 = {45 78 74 72 61 63 74 47 5a 69 70 54 6f 44 69 72 65 63 74 6f 72 79 } //00 00  ExtractGZipToDirectory
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EI_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,25 00 25 00 0a 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 63 39 32 37 61 39 65 65 2d 63 65 64 64 2d 34 31 36 35 2d 39 35 36 36 2d 64 65 33 37 38 39 61 66 63 62 36 33 } //05 00  $c927a9ee-cedd-4165-9566-de3789afcb63
		$a_81_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //05 00  CreateInstance
		$a_81_2 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_3 = {42 4f 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  BO.My.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EI_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.EI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 11 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 64 31 35 30 63 39 65 38 2d 61 36 30 31 2d 34 36 63 63 2d 39 36 31 39 2d 30 30 32 31 36 61 35 37 31 30 61 36 } //14 00  $d150c9e8-a601-46cc-9619-00216a5710a6
		$a_81_1 = {24 33 34 63 38 32 61 39 39 2d 63 36 38 37 2d 34 34 64 66 2d 38 34 39 38 2d 39 62 31 39 38 38 30 62 65 35 61 37 } //14 00  $34c82a99-c687-44df-8498-9b19880be5a7
		$a_01_2 = {24 30 33 43 39 44 33 35 44 2d 38 31 45 46 2d 34 39 38 43 2d 39 34 42 42 2d 35 35 39 34 31 34 43 31 32 33 33 31 } //14 00  $03C9D35D-81EF-498C-94BB-559414C12331
		$a_81_3 = {24 32 31 63 36 64 39 32 65 2d 30 35 37 34 2d 34 31 31 31 2d 61 32 31 38 2d 65 63 37 33 36 63 35 66 63 33 64 33 } //01 00  $21c6d92e-0574-4111-a218-ec736c5fc3d3
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {41 6c 6d 61 72 61 66 69 77 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Almarafiw.Properties.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {43 6c 61 73 73 41 73 73 69 67 6e 6d 65 6e 74 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  ClassAssignment.Properties.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {49 6d 61 67 65 52 65 63 6f 67 6e 69 74 69 6f 6e 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  ImageRecognition.Properties.Resources.resources
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_11 = {46 6c 75 78 78 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Fluxx.Form1.resources
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_14 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_15 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}