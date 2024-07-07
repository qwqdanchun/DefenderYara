
rule PWS_Win32_Fareit_AF_MTB{
	meta:
		description = "PWS:Win32/Fareit.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {89 0c 24 eb 90 0a 40 00 8b 0f 90 02 a0 31 34 24 90 02 50 59 90 02 50 89 0c 18 90 02 50 83 c2 04 90 02 50 83 d7 04 90 02 50 eb 90 00 } //1
		$a_03_1 = {89 0c 24 81 90 0a 40 00 8b 0f 90 02 a0 31 34 24 90 02 50 59 90 02 50 89 0c 18 90 02 50 83 c2 04 90 02 50 83 d7 04 90 02 50 eb 90 00 } //1
		$a_03_2 = {89 0c 24 85 90 0a 40 00 8b 0f 90 02 a0 31 34 24 90 02 50 59 90 02 50 89 0c 18 90 02 50 83 c2 04 90 02 50 83 d7 04 90 02 50 eb 90 00 } //1
		$a_03_3 = {89 0c 24 66 90 0a 40 00 8b 0f 90 02 a0 31 34 24 90 02 50 59 90 02 50 89 0c 18 90 02 50 83 c2 04 90 02 50 83 d7 04 90 02 50 eb 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}