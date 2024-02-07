
rule Trojan_BAT_Remcos_PB_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 32 63 36 30 35 32 30 65 2d 65 33 63 63 2d 34 62 30 39 2d 38 64 31 31 2d 66 32 35 38 33 36 66 39 39 35 66 64 } //14 00  $2c60520e-e3cc-4b09-8d11-f25836f995fd
		$a_81_1 = {24 65 62 64 61 34 39 39 31 2d 62 37 66 62 2d 34 34 34 31 2d 39 33 39 35 2d 38 38 63 61 32 61 66 63 66 32 64 63 } //14 00  $ebda4991-b7fb-4441-9395-88ca2afcf2dc
		$a_81_2 = {24 33 30 64 34 61 61 33 61 2d 61 66 62 36 2d 34 37 36 35 2d 62 61 31 38 2d 66 32 33 36 34 34 37 30 65 33 34 66 } //01 00  $30d4aa3a-afb6-4765-ba18-f2364470e34f
		$a_81_3 = {52 65 6d 6f 74 65 5f 41 64 6d 69 6e 69 73 74 72 61 74 69 6f 6e 5f 54 6f 6f 6c 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Remote_Administration_Tool.Properties.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_5 = {43 61 70 74 75 72 65 53 63 72 65 65 6e 49 6d 61 67 65 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  CaptureScreenImage.Properties.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {56 42 5f 62 6c 61 63 6b 6a 61 63 6b 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  VB_blackjack.My.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerBrowsableAttribute
	condition:
		any of ($a_*)
 
}