
rule Trojan_BAT_AgentTesla_DKR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DKR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 55 49 4f 44 53 31 32 33 34 31 31 34 31 34 00 } //01 00  唀佉卄㈱㐳ㄱㄴ4
		$a_01_1 = {00 55 49 4f 44 53 31 32 33 34 31 34 32 33 35 00 } //01 00  唀佉卄㈱㐳㐱㌲5
		$a_01_2 = {00 55 49 4f 44 53 31 32 34 36 35 37 35 37 35 36 37 35 36 00 } //01 00  唀佉卄㈱㘴㜵㜵㘵㔷6
		$a_01_3 = {00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 } //01 00  䐀䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄D
		$a_01_4 = {00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 } //01 00 
		$a_01_5 = {00 42 61 73 65 33 32 53 74 72 69 6e 67 00 } //01 00  䈀獡㍥匲牴湩g
		$a_01_6 = {47 00 2d 00 65 00 2d 00 74 00 2d 00 4d 00 2d 00 65 00 2d 00 74 00 2d 00 68 00 2d 00 6f 00 2d 00 64 00 } //01 00  G-e-t-M-e-t-h-o-d
		$a_01_7 = {49 00 2d 00 6e 00 2d 00 76 00 2d 00 6f 00 2d 00 6b 00 2d 00 65 00 } //01 00  I-n-v-o-k-e
		$a_01_8 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}