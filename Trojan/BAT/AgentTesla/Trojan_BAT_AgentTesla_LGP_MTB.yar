
rule Trojan_BAT_AgentTesla_LGP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LGP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 34 64 34 62 63 65 38 33 2d 35 32 64 34 2d 34 62 35 39 2d 38 34 36 35 2d 31 30 62 38 39 30 33 33 34 38 63 62 } //0a 00  $4d4bce83-52d4-4b59-8465-10b8903348cb
		$a_01_1 = {24 38 33 33 33 31 32 31 61 2d 37 62 33 65 2d 34 62 32 33 2d 61 64 37 35 2d 35 66 35 33 32 32 36 61 65 64 38 33 } //01 00  $8333121a-7b3e-4b23-ad75-5f53226aed83
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_4 = {00 47 65 74 50 69 78 65 6c 00 } //01 00  䜀瑥楐數l
		$a_01_5 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_7 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //00 00  ColorTranslator
	condition:
		any of ($a_*)
 
}