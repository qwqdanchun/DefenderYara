
rule Trojan_BAT_AgentTesla_MBFI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {16 0a 11 05 1f 45 93 11 05 1f 45 93 59 13 04 2b c0 03 04 61 1f 10 59 06 61 } //1
		$a_01_1 = {6a 55 73 47 69 44 33 75 73 68 31 75 42 79 59 4f 34 4a 00 66 65 4a 6d 55 30 30 4b 64 00 63 46 6f 77 } //1
		$a_01_2 = {42 65 6e 2e 64 6c 6c } //1 Ben.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_MBFI_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {26 00 33 00 26 00 45 00 32 00 30 00 30 00 26 00 33 00 26 00 45 00 32 00 26 00 33 00 33 00 26 00 45 00 32 00 26 00 32 00 33 00 26 00 26 00 26 00 } //1 &3&E200&3&E2&33&E2&23&&&
		$a_01_1 = {36 00 26 00 33 00 34 00 26 00 26 00 26 00 26 00 26 00 33 00 37 00 26 00 42 00 36 00 26 00 32 00 37 00 26 00 31 00 36 00 26 00 44 00 36 00 26 00 35 00 36 00 26 00 34 00 36 00 26 00 31 00 } //1 6&34&&&&&37&B6&27&16&D6&56&46&1
		$a_01_2 = {20 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 20 00 } //1  System.Reflection.Assembly 
		$a_01_3 = {20 00 4c 00 6f 00 61 00 64 00 20 00 } //1  Load 
		$a_01_4 = {44 00 6f 00 64 00 67 00 65 00 } //1 Dodge
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}