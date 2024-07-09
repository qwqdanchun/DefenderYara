
rule Backdoor_BAT_Bladabindi_AO{
	meta:
		description = "Backdoor:BAT/Bladabindi.AO,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_03_0 = {1f 1d 0f 01 1a 28 ?? 00 00 06 26 } //10
		$a_03_1 = {09 20 a0 00 00 00 [0-20] 09 20 a1 00 00 00 [0-20] 09 20 00 00 01 00 [0-20] 09 1f 10 [0-20] 09 20 00 00 02 00 [0-20] 09 1f 11 [0-20] 09 20 a3 00 00 00 } //1
		$a_03_2 = {1f 64 14 13 04 12 04 1f 64 28 ?? 00 00 06 } //5
		$a_03_3 = {12 03 14 13 04 12 04 16 12 01 16 13 05 12 05 16 13 06 12 06 14 13 07 12 07 16 28 ?? 00 00 06 } //5
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*5+(#a_03_3  & 1)*5) >=21
 
}