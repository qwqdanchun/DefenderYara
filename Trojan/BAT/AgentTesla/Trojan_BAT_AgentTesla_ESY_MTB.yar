
rule Trojan_BAT_AgentTesla_ESY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ESY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 44 31 30 42 36 42 31 46 2d 30 32 31 46 2d 34 44 41 30 2d 42 46 42 39 2d 32 46 32 35 33 44 46 36 37 38 31 35 } //01 00  $D10B6B1F-021F-4DA0-BFB9-2F253DF67815
		$a_81_1 = {53 75 62 73 74 72 69 6e 67 } //01 00  Substring
		$a_01_2 = {00 47 65 74 4d 65 74 68 6f 64 73 00 } //01 00  䜀瑥敍桴摯s
		$a_01_3 = {00 47 65 74 50 69 78 65 6c 00 } //01 00  䜀瑥楐數l
		$a_01_4 = {00 54 6f 41 72 67 62 00 } //01 00  吀䅯杲b
		$a_01_5 = {00 54 6f 49 6e 74 33 32 00 } //01 00 
		$a_01_6 = {00 47 65 74 54 79 70 65 73 00 } //00 00  䜀瑥祔数s
	condition:
		any of ($a_*)
 
}