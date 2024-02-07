
rule Trojan_BAT_AgentTesla_LGD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LGD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 34 37 65 36 34 30 39 61 2d 31 33 64 61 2d 34 38 36 64 2d 39 32 33 31 2d 63 32 64 37 34 65 32 33 37 66 38 66 } //0a 00  $47e6409a-13da-486d-9231-c2d74e237f8f
		$a_01_1 = {33 66 61 35 38 63 63 37 2d 34 63 66 62 2d 34 61 65 65 2d 39 62 31 63 2d 35 65 35 62 35 33 64 66 35 32 61 66 } //0a 00  3fa58cc7-4cfb-4aee-9b1c-5e5b53df52af
		$a_01_2 = {24 65 64 63 33 63 63 30 38 2d 65 66 64 38 2d 34 32 63 37 2d 62 62 64 38 2d 61 32 36 64 38 63 62 34 34 34 62 39 } //01 00  $edc3cc08-efd8-42c7-bbd8-a26d8cb444b9
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_5 = {00 47 65 74 50 69 78 65 6c 00 } //01 00  䜀瑥楐數l
		$a_01_6 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_8 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //00 00  ColorTranslator
	condition:
		any of ($a_*)
 
}