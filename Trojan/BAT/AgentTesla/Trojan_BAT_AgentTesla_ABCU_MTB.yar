
rule Trojan_BAT_AgentTesla_ABCU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABCU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //02 00  CreateInstance
		$a_01_2 = {51 00 75 00 61 00 6e 00 4c 00 79 00 43 00 75 00 61 00 48 00 61 00 6e 00 67 00 54 00 69 00 76 00 69 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //02 00  QuanLyCuaHangTivi.Properties.Resources
		$a_01_3 = {4c 00 75 00 69 00 73 00 31 00 } //02 00  Luis1
		$a_01_4 = {51 00 75 00 61 00 6e 00 4c 00 79 00 43 00 75 00 61 00 48 00 61 00 6e 00 67 00 54 00 69 00 76 00 69 00 } //02 00  QuanLyCuaHangTivi
		$a_01_5 = {4f 00 49 00 59 00 35 00 34 00 59 00 35 00 35 00 5a 00 42 00 45 00 51 00 34 00 34 00 47 00 46 00 34 00 46 00 35 00 37 00 4e 00 35 00 } //00 00  OIY54Y55ZBEQ44GF4F57N5
	condition:
		any of ($a_*)
 
}