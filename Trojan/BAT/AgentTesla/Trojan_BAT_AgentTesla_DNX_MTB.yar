
rule Trojan_BAT_AgentTesla_DNX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DNX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 42 53 54 52 4d 61 72 73 68 61 6c 65 72 00 } //01 00 
		$a_01_1 = {00 46 4c 75 78 43 65 6e 74 65 72 00 } //01 00  䘀界䍸湥整r
		$a_01_2 = {00 4f 62 6a 65 63 74 49 64 65 6e 74 69 66 69 65 72 00 } //01 00  伀橢捥䥴敤瑮晩敩r
		$a_01_3 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00  䜀瑥硅潰瑲摥祔数s
		$a_01_4 = {00 4c 65 76 65 6c 00 } //01 00 
		$a_01_5 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_6 = {00 47 65 74 50 69 78 65 6c 00 } //01 00  䜀瑥楐數l
		$a_01_7 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_8 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //00 00  䐀扥杵楧杮潍敤s
	condition:
		any of ($a_*)
 
}