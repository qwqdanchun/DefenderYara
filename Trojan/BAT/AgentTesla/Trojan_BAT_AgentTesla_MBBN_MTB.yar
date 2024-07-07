
rule Trojan_BAT_AgentTesla_MBBN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBBN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 2b 00 35 00 41 00 2b 00 39 00 7d 00 40 00 2b 00 7d 00 33 00 40 00 40 00 40 00 2b 00 7d 00 34 00 40 00 40 00 40 00 2b 00 46 00 46 00 2b 00 46 00 46 00 40 00 40 00 2b 00 42 00 38 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 2b 00 34 00 7d 00 40 00 40 00 } //1 4D+5A+9}@+}3@@@+}4@@@+FF+FF@@+B8@@@@@@@+4}@@
		$a_01_1 = {39 00 40 00 40 00 2b 00 7d 00 36 00 2b 00 7d 00 41 00 2b 00 31 00 38 00 2b 00 37 00 32 00 2b 00 7d 00 31 00 40 00 40 00 2b 00 37 00 7d 00 2b 00 31 00 36 00 2b 00 37 00 33 00 2b 00 31 00 } //1 9@@+}6+}A+18+72+}1@@+7}+16+73+1
		$a_81_2 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_81_3 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_81_4 = {47 65 74 54 79 70 65 73 } //1 GetTypes
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}