
rule Trojan_BAT_AgentTesla_ABIF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABIF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 03 11 04 28 ?? ?? ?? 06 28 ?? ?? ?? 06 38 ?? ?? ?? 00 38 ?? ?? ?? 00 38 ?? ?? ?? 00 00 11 01 11 00 28 ?? ?? ?? 06 d2 9c 38 ?? ?? ?? ff 11 06 3a ?? ?? ?? 00 38 ?? ?? ?? ff 00 16 13 04 38 ?? ?? ?? 00 11 08 2a 38 ?? ?? ?? ff 38 ?? ?? ?? ff 28 ?? ?? ?? 06 13 02 38 ?? ?? ?? ff 11 00 17 58 13 00 20 ?? ?? ?? 00 38 ?? ?? ?? ff 11 03 20 ?? ?? ?? 00 fe 04 13 06 38 ?? ?? ?? ff 00 28 ?? ?? ?? 06 28 ?? ?? ?? 06 28 ?? ?? ?? 06 38 ?? ?? ?? ff 00 16 13 } //2
		$a_01_1 = {41 44 47 43 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //1 ADGC.g.resources
		$a_01_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 41 00 70 00 70 00 31 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 WindowsFormsApp1.Properties.Resources
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}