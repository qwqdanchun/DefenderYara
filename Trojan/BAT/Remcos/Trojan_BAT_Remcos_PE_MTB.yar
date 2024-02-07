
rule Trojan_BAT_Remcos_PE_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 36 64 39 64 63 65 32 31 2d 61 31 32 35 2d 34 34 39 31 2d 62 62 62 33 2d 38 31 31 37 64 34 38 38 36 39 66 31 } //14 00  $6d9dce21-a125-4491-bbb3-8117d48869f1
		$a_81_1 = {24 61 62 61 61 65 64 64 34 2d 35 63 34 63 2d 34 32 64 65 2d 62 35 63 39 2d 65 36 62 32 35 39 31 66 31 63 30 39 } //14 00  $abaaedd4-5c4c-42de-b5c9-e6b2591f1c09
		$a_81_2 = {24 63 32 39 33 34 35 36 31 2d 30 33 35 61 2d 34 61 39 39 2d 62 38 36 31 2d 33 33 36 66 35 30 33 31 38 31 37 33 } //01 00  $c2934561-035a-4a99-b861-336f50318173
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {56 69 64 65 6f 5f 43 61 70 74 75 72 65 5f 44 6f 6e 4b 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Video_Capture_DonK.Properties.Resources
		$a_81_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_6 = {44 64 64 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Ddd.Resources.resources
		$a_81_7 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_8 = {42 61 73 65 43 6f 6e 66 69 67 48 61 6e 64 6c 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  BaseConfigHandler.My.Resources
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}