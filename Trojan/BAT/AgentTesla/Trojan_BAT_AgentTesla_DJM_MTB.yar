
rule Trojan_BAT_AgentTesla_DJM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DJM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {19 62 d2 58 86 11 07 11 0b 1b d6 6f ?? ?? ?? 0a 18 62 d2 58 86 11 07 11 0b 1c d6 6f } //1
		$a_01_1 = {00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 00 } //1
		$a_01_2 = {00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 } //1
		$a_01_3 = {00 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 } //1
		$a_01_4 = {00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 } //1 䐀䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄䑄D
		$a_01_5 = {00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 } //1
		$a_01_6 = {00 42 61 73 65 33 32 53 74 72 69 6e 67 00 } //1 䈀獡㍥匲牴湩g
		$a_01_7 = {47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 } //1 GetMethod
		$a_01_8 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //1
		$a_01_9 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //1 Invoke
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}