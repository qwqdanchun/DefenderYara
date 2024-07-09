
rule Trojan_BAT_AgentTesla_NHM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {07 09 06 09 18 5a 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 9c 09 17 58 0d 09 20 00 58 00 00 fe 04 13 04 11 04 2d da } //1
		$a_01_1 = {00 53 75 62 73 74 72 69 6e 67 00 } //1
		$a_01_2 = {00 47 65 74 54 79 70 65 } //1 䜀瑥祔数
		$a_01_3 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //1 䌀敲瑡䥥獮慴据e
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}