
rule Ransom_Win32_Enestedel_Z_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.Z!rsm,SIGNATURE_TYPE_PEHSTR_EXT,36 01 36 01 08 00 00 "
		
	strings :
		$a_01_0 = {33 c0 c6 00 02 } //100
		$a_01_1 = {02 00 40 00 47 75 } //100
		$a_01_2 = {05 00 40 00 4d 75 } //100
		$a_03_3 = {00 10 0f bf 0d 90 09 05 00 0f 90 04 01 02 be bf 15 90 00 } //10
		$a_03_4 = {00 10 0f bf 15 90 09 05 00 0f 90 04 01 02 be bf 0d 90 00 } //10
		$a_03_5 = {00 10 0f be 2d 90 09 05 00 0f 90 04 01 02 be bf 15 90 00 } //10
		$a_03_6 = {00 10 0f be 0d 90 09 05 00 0f 90 04 01 02 be bf 05 90 00 } //10
		$a_03_7 = {00 10 0f be 15 90 09 05 00 0f 90 04 01 02 be bf 0d 90 00 } //10
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_03_3  & 1)*10+(#a_03_4  & 1)*10+(#a_03_5  & 1)*10+(#a_03_6  & 1)*10+(#a_03_7  & 1)*10) >=310
 
}