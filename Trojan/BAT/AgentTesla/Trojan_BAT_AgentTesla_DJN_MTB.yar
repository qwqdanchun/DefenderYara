
rule Trojan_BAT_AgentTesla_DJN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DJN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 00 } //01 00 
		$a_01_1 = {00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 } //01 00 
		$a_01_2 = {00 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 } //01 00 
		$a_01_3 = {00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 } //01 00  䐀䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄D
		$a_01_4 = {00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 } //01 00 
		$a_01_5 = {00 42 61 73 65 33 32 53 74 72 69 6e 67 00 } //01 00  䈀獡㍥匲牴湩g
		$a_01_6 = {47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 } //01 00  GetMethod
		$a_01_7 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_8 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //01 00  Invoke
		$a_01_9 = {00 52 41 57 00 41 63 63 6f 75 6e 74 44 6f 6d 61 69 6e 53 69 64 00 49 4d 61 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}