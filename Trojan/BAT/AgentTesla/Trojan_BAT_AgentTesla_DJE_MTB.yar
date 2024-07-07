
rule Trojan_BAT_AgentTesla_DJE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DJE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {24 41 31 34 43 45 32 43 30 2d 41 42 33 36 2d 34 36 32 46 2d 39 38 39 33 2d 31 37 32 39 43 45 46 33 35 46 32 37 } //1 $A14CE2C0-AB36-462F-9893-1729CEF35F27
		$a_01_1 = {00 47 65 74 4d 65 74 68 6f 64 73 00 } //1 䜀瑥敍桴摯s
		$a_01_2 = {00 54 6f 55 49 6e 74 33 32 00 } //1 吀啯湉㍴2
		$a_01_3 = {00 53 75 62 73 74 72 69 6e 67 00 } //1
		$a_01_4 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //1
		$a_01_5 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //1 䐀扥杵楧杮潍敤s
		$a_01_6 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_7 = {00 47 65 74 54 79 70 65 73 00 } //1 䜀瑥祔数s
		$a_01_8 = {00 54 6f 41 72 67 62 00 } //1 吀䅯杲b
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}