
rule Trojan_Win32_CryptInject_RBC_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.RBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_03_0 = {4e 11 00 00 c7 44 24 90 01 05 75 90 09 06 00 81 3d 90 00 } //1
		$a_03_1 = {89 44 24 34 75 90 09 18 00 81 3d 90 01 08 a1 90 01 04 89 44 24 90 01 01 a1 90 00 } //10
		$a_03_2 = {89 44 24 34 75 90 09 13 00 81 3d 90 01 08 8b 90 01 01 89 44 24 90 01 01 8b 90 00 } //10
		$a_03_3 = {c3 04 00 00 75 90 09 0b 00 8b 90 01 01 c1 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_03_3  & 1)*1) >=12
 
}