
rule Trojan_BAT_AgentTesla_OSXF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.OSXF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_03_0 = {17 8d 19 00 00 01 25 16 07 a2 25 0c 14 14 17 8d 77 00 00 01 25 16 17 9c 25 0d 28 ?? ?? ?? 0a 09 16 91 2d 02 2b 09 08 16 9a 28 ?? ?? ?? 0a 0b 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 26 07 28 ?? ?? ?? 0a } //1
		$a_01_1 = {46 00 72 00 30 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 Fr0mBase64String
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_4 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 43 00 30 00 6e 00 76 00 65 00 72 00 74 00 } //1 System.C0nvert
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_6 = {56 30 30 30 30 30 30 30 30 30 30 30 30 30 33 } //1 V00000000000003
		$a_01_7 = {4f 53 32 30 30 30 33 } //1 OS20003
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}