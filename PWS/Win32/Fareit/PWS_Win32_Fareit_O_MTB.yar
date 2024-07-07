
rule PWS_Win32_Fareit_O_MTB{
	meta:
		description = "PWS:Win32/Fareit.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
		$a_03_1 = {ff 34 0f d9 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
		$a_03_2 = {ff 34 0f 85 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
		$a_03_3 = {ff 34 0f 3d 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
		$a_03_4 = {ff 34 0f 86 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
		$a_03_5 = {ff 34 0f 78 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
		$a_03_6 = {ff 34 0f 79 90 02 20 31 34 24 90 02 20 8f 04 08 90 02 20 49 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=2
 
}