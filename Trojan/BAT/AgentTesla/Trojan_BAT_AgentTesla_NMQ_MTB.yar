
rule Trojan_BAT_AgentTesla_NMQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NMQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {56 73 72 72 70 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //0a 00 
		$a_01_1 = {58 00 6a 00 61 00 70 00 72 00 69 00 78 00 6b 00 62 00 72 00 70 00 6d 00 73 00 79 00 7a 00 66 00 6c 00 69 00 64 00 6e 00 73 00 79 00 69 00 73 } //01 00 
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_3 = {2d 00 65 00 6e 00 63 00 20 00 59 00 77 00 42 00 74 00 41 00 47 00 51 00 41 00 49 00 41 00 41 00 76 00 41 00 47 00 4d 00 41 00 49 00 41 00 42 00 30 00 41 00 47 00 6b 00 41 00 62 00 51 00 42 00 6c 00 41 00 47 00 38 00 41 00 64 00 51 00 42 00 30 00 41 00 43 00 41 00 41 00 4d 00 67 00 41 00 77 00 41 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_4 = {52 65 76 65 72 73 65 } //01 00 
		$a_01_5 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_01_6 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_01_7 = {57 65 62 52 65 71 75 65 73 74 } //00 00 
	condition:
		any of ($a_*)
 
}