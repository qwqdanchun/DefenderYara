
rule Trojan_BAT_AgentTesla_MBDW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBDW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {4d 00 41 00 38 00 37 00 36 00 31 00 31 00 38 00 31 00 41 00 38 00 43 00 31 00 43 00 38 00 42 00 32 00 36 00 41 00 43 00 36 00 43 00 35 00 36 00 32 00 7d 00 37 00 44 00 38 00 34 00 38 00 } //1 MA8761181A8C1C8B26AC6C562}7D848
		$a_01_1 = {45 00 34 00 31 00 31 00 37 00 41 00 33 00 44 00 7d 00 31 00 44 00 7d 00 34 00 38 00 33 00 34 00 37 00 41 00 4d 00 34 00 7d 00 36 00 37 00 37 00 42 00 39 00 36 00 41 00 39 00 42 00 34 00 41 00 36 00 43 00 43 00 41 00 } //1 E4117A3D}1D}48347AM4}677B96A9B4A6CCA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}