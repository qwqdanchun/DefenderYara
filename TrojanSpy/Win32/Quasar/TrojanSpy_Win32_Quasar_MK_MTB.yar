
rule TrojanSpy_Win32_Quasar_MK_MTB{
	meta:
		description = "TrojanSpy:Win32/Quasar.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 90 02 10 2e 00 70 00 72 00 6f 00 6a 00 90 00 } //1
		$a_02_1 = {5c 41 70 70 44 61 74 61 5c 90 02 10 2e 70 72 6f 6a 90 00 } //1
		$a_02_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6a 00 6f 00 78 00 69 00 2e 00 72 00 75 00 2f 00 90 02 20 2e 00 70 00 72 00 6f 00 6a 00 90 00 } //1
		$a_02_3 = {68 74 74 70 3a 2f 2f 6a 6f 78 69 2e 72 75 2f 90 02 20 2e 70 72 6f 6a 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=2
 
}