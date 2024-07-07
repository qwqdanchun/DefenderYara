
rule Trojan_BAT_AgentTesla_MBDS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBDS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 35 00 41 00 39 00 7d 00 7d 00 7d 00 7d 00 33 00 7d 00 7d 00 7d 00 7d 00 7d 00 7d 00 7d 00 34 00 7d 00 7d 00 7d 00 7d 00 7d 00 7d 00 51 00 51 00 51 00 51 00 7d 00 7d 00 7d 00 7d 00 42 00 38 00 7d 00 7d 00 7d 00 7d 00 } //1 4D5A9}}}}3}}}}}}}4}}}}}}QQQQ}}}}B8}}}}
		$a_01_1 = {7d 00 7d 00 35 00 7d 00 34 00 35 00 7d 00 7d 00 7d 00 7d 00 34 00 43 00 7d 00 31 00 7d 00 33 00 7d 00 7d 00 43 00 32 00 38 00 44 00 7d 00 41 00 36 00 34 00 7d 00 7d 00 7d 00 } //1 }}5}45}}}}4C}1}3}}C28D}A64}}}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}