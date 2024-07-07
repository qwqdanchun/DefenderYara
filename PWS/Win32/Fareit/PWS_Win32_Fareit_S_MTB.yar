
rule PWS_Win32_Fareit_S_MTB{
	meta:
		description = "PWS:Win32/Fareit.S!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {ff 34 1f 71 90 02 40 58 90 02 a0 35 90 02 a0 89 04 1f 90 02 a0 43 90 02 a0 43 90 02 a0 43 90 02 a0 43 90 02 a0 39 d3 90 03 01 02 75 0f 85 90 00 } //1
		$a_03_1 = {ff 34 1f eb 90 02 40 58 90 02 a0 35 90 02 a0 89 04 1f 90 02 a0 43 90 02 a0 43 90 02 a0 43 90 02 a0 43 90 02 a0 39 d3 90 03 01 02 75 0f 85 90 00 } //1
		$a_03_2 = {ff 34 1f 71 90 02 40 58 90 02 a0 35 90 02 a0 89 04 1f 90 02 a0 83 c3 04 90 02 a0 39 d3 90 17 03 01 02 02 75 0f 85 75 c9 90 00 } //1
		$a_03_3 = {ff 34 1f eb 90 02 40 58 90 02 a0 35 90 02 a0 89 04 1f 90 02 a0 83 c3 04 90 02 a0 39 d3 90 17 03 01 02 02 75 0f 85 75 c9 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}