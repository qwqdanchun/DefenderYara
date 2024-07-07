
rule Trojan_Win32_Kryptik_G_MTB{
	meta:
		description = "Trojan:Win32/Kryptik.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {88 0c 10 8b 0d 90 01 04 81 f9 90 01 09 0f 44 c7 42 a3 90 01 04 3b d1 72 90 00 } //1
		$a_02_1 = {8a 54 19 02 8a 4c 19 03 88 8d 90 01 04 80 e1 90 01 01 c0 e1 90 01 01 88 95 90 01 04 88 8d 90 01 04 83 f8 90 01 01 75 90 00 } //1
		$a_02_2 = {8a c1 8a b5 90 01 04 24 90 01 01 c0 e0 90 01 01 c0 e1 90 01 01 0a d0 08 8d 90 01 04 88 34 3e 81 3d 90 02 08 88 95 90 01 04 75 90 00 } //1
		$a_02_3 = {8b c7 c1 e8 90 01 01 03 85 90 01 04 33 90 02 05 33 90 01 01 2b f0 83 90 02 06 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}