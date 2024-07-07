
rule Backdoor_BAT_Bladabindi_BC{
	meta:
		description = "Backdoor:BAT/Bladabindi.BC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {00 44 4c 56 00 6e 00 47 54 56 00 } //1
		$a_01_1 = {00 53 42 00 53 00 42 53 00 42 00 } //1
		$a_01_2 = {00 4c 61 73 74 41 56 00 4c 61 73 74 41 53 00 } //1
		$a_01_3 = {00 55 4e 53 00 49 4e 53 00 49 6e 64 00 } //1
		$a_01_4 = {00 6b 00 57 52 4b 00 } //1
		$a_01_5 = {00 47 65 74 4b 65 79 00 6b 65 79 00 70 72 00 } //1
		$a_01_6 = {00 47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 00 57 52 4b 00 } //1 䜀瑥獁湹䭣祥瑓瑡e剗K
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}