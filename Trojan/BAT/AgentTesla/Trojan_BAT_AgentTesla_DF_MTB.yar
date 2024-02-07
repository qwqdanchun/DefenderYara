
rule Trojan_BAT_AgentTesla_DF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {13 07 11 07 28 90 01 03 0a 13 08 08 06 11 08 90 00 } //01 00 
		$a_81_1 = {4d 79 41 70 70 6c 69 63 61 74 69 6f 6e } //01 00  MyApplication
		$a_81_2 = {49 53 65 63 74 69 6f 6e 45 6e 74 72 79 } //01 00  ISectionEntry
		$a_81_3 = {53 75 62 74 72 61 63 74 4f 62 6a 65 63 74 } //01 00  SubtractObject
		$a_81_4 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_81_5 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_DF_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 11 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 39 39 34 62 36 65 63 66 2d 36 37 32 62 2d 34 32 39 37 2d 38 62 66 33 2d 31 38 61 31 61 35 62 32 30 38 38 64 } //14 00  $994b6ecf-672b-4297-8bf3-18a1a5b2088d
		$a_81_1 = {24 45 31 30 36 32 31 34 30 2d 36 32 43 38 2d 34 38 39 30 2d 39 45 32 34 2d 31 42 34 37 32 46 31 42 30 32 46 44 } //14 00  $E1062140-62C8-4890-9E24-1B472F1B02FD
		$a_81_2 = {24 35 33 32 62 38 39 36 38 2d 35 66 65 35 2d 34 39 33 32 2d 39 63 35 65 2d 34 64 37 39 38 37 36 30 63 37 33 39 } //14 00  $532b8968-5fe5-4932-9c5e-4d798760c739
		$a_81_3 = {24 39 62 34 33 35 65 39 37 2d 31 37 65 33 2d 34 39 62 66 2d 62 30 39 37 2d 63 31 30 63 30 34 33 35 64 37 61 63 } //01 00  $9b435e97-17e3-49bf-b097-c10c0435d7ac
		$a_81_4 = {45 61 73 79 53 63 72 65 65 6e 73 68 6f 74 43 61 70 74 75 72 65 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00  EasyScreenshotCapture.Form1.resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {53 74 65 73 74 57 69 6e 46 6f 72 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  StestWinForm.Properties.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_8 = {50 61 69 6e 74 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Painter.Properties.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_10 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_13 = {47 65 74 45 78 74 65 6e 73 69 6f 6e } //01 00  GetExtension
		$a_81_14 = {43 72 65 61 74 65 44 6f 6d 61 69 6e } //01 00  CreateDomain
		$a_81_15 = {47 65 74 44 6f 6d 61 69 6e } //01 00  GetDomain
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}