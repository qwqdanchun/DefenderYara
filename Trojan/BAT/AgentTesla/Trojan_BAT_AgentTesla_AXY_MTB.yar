
rule Trojan_BAT_AgentTesla_AXY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AXY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_02_0 = {25 16 03 a2 25 0d 14 14 17 ?? ?? ?? ?? ?? 25 16 17 9c 25 13 04 28 ?? ?? ?? 0a 11 04 16 91 2d 02 2b 0a 09 16 9a 28 ?? ?? ?? 0a 10 01 ?? ?? ?? ?? ?? 0b 07 } //10
		$a_02_1 = {25 16 03 a2 25 0d 14 14 17 8d ?? ?? ?? 01 25 16 17 9c 25 13 04 28 ?? ?? ?? 0a 11 04 16 91 2c 03 17 2b 03 16 2b 00 2d 02 2b 0c 09 16 9a } //10
		$a_80_2 = {47 65 74 54 79 70 65 } //GetType  1
		$a_00_3 = {47 00 65 00 74 00 00 03 78 00 00 0b 50 00 69 00 78 00 65 00 6c } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_80_2  & 1)*1+(#a_00_3  & 1)*1) >=12
 
}
rule Trojan_BAT_AgentTesla_AXY_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AXY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_02_0 = {25 16 03 a2 25 0d 14 14 17 ?? ?? ?? ?? ?? 25 16 17 9c 25 13 04 28 ?? ?? ?? 0a 11 04 16 91 2d 02 2b 0a 09 16 9a 28 ?? ?? ?? 0a 10 01 ?? ?? ?? ?? ?? 0b 07 } //10
		$a_02_1 = {25 16 03 a2 25 0d 14 14 17 8d ?? ?? ?? 01 25 16 17 9c 25 13 04 28 ?? ?? ?? 0a 11 04 16 91 2c 03 17 2b 03 16 2b 00 2d 02 2b 0c 09 16 9a } //10
		$a_80_2 = {53 69 6d 70 6c 65 55 49 2e 41 42 } //SimpleUI.AB  1
		$a_80_3 = {47 65 74 54 79 70 65 } //GetType  1
		$a_80_4 = {53 65 6c 65 63 74 6f 72 58 } //SelectorX  1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1) >=13
 
}