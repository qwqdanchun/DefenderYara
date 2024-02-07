
rule Trojan_BAT_AgentTesla_NNI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NNI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 64 38 62 31 61 31 30 37 2d 34 36 39 38 2d 34 33 38 32 2d 62 39 63 64 2d 32 63 31 32 62 62 61 34 64 30 36 61 } //01 00  $d8b1a107-4698-4382-b9cd-2c12bba4d06a
		$a_01_1 = {00 53 74 72 52 65 76 65 72 73 65 00 } //01 00  匀牴敒敶獲e
		$a_01_2 = {00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //01 00  䤀癮歯䵥浥敢r
		$a_01_3 = {63 6f 66 66 65 65 5f 6d 61 63 68 69 6e 65 5f 63 6f 6e 74 72 6f 6c 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  coffee_machine_control.Properties.Resources.resources
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_5 = {00 4f 41 49 51 55 45 51 45 00 } //01 00  伀䥁啑充E
		$a_01_6 = {00 4f 41 49 51 45 48 47 00 } //01 00 
		$a_01_7 = {00 4f 41 49 45 4a 58 43 5a 41 48 58 00 } //01 00 
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_9 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_01_10 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}