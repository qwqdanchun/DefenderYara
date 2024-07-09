
rule Backdoor_BAT_Bladabindi_AL_{
	meta:
		description = "Backdoor:BAT/Bladabindi.AL!!Bladabindi,SIGNATURE_TYPE_ARHSTR_EXT,1f 00 1f 00 05 00 00 "
		
	strings :
		$a_03_0 = {1f 1d 0f 01 1a 28 ?? 00 00 06 26 } //1
		$a_03_1 = {1f 1d 0f 00 1a 28 ?? 00 00 06 26 } //1
		$a_03_2 = {1f 64 14 13 04 12 04 1f 64 28 ?? 00 00 06 } //10
		$a_03_3 = {12 03 14 13 04 12 04 16 12 01 16 13 05 12 05 16 13 06 12 06 14 13 07 12 07 16 28 ?? 00 00 06 } //10
		$a_01_4 = {00 57 52 4b 00 } //10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*10+(#a_03_3  & 1)*10+(#a_01_4  & 1)*10) >=31
 
}