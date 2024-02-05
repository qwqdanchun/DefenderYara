
rule Trojan_BAT_AgentTesla_DDN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DDN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 62 32 38 37 64 30 32 37 2d 33 31 32 34 2d 34 36 37 33 2d 62 36 37 65 2d 39 33 36 63 39 37 66 30 34 65 37 32 } //0a 00 
		$a_01_1 = {24 33 61 34 33 30 38 66 66 2d 61 36 66 35 2d 34 33 32 38 2d 62 61 66 35 2d 66 62 36 37 38 38 31 32 61 31 30 63 } //01 00 
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_3 = {00 54 6f 57 69 6e 33 32 00 43 6f 6e 76 65 72 74 00 } //01 00 
		$a_01_4 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //01 00 
		$a_01_5 = {00 47 65 74 54 79 70 65 } //01 00 
		$a_01_6 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //01 00 
		$a_01_7 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}