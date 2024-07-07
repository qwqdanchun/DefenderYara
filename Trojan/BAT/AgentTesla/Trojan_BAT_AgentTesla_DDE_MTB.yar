
rule Trojan_BAT_AgentTesla_DDE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DDE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {24 33 66 62 36 62 62 37 36 2d 30 66 30 36 2d 34 31 32 66 2d 38 66 64 66 2d 64 37 33 35 36 34 64 35 37 31 33 64 } //1 $3fb6bb76-0f06-412f-8fdf-d73564d5713d
		$a_01_1 = {57 69 6e 4d 69 78 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 WinMixer.Properties.Resources
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_3 = {00 54 6f 57 69 6e 33 32 00 } //1
		$a_01_4 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //1 䌀敲瑡䥥獮慴据e
		$a_01_5 = {00 47 65 74 54 79 70 65 00 } //1
		$a_01_6 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //1
		$a_01_7 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //1 䐀扥杵楧杮潍敤s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}