
rule Trojan_Win64_Dcstl_PDE_MTB{
	meta:
		description = "Trojan:Win64/Dcstl.PDE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8e 2c 0b 72 90 01 03 70 17 28 90 01 03 06 02 73 90 01 03 0a 25 11 07 6f 90 01 03 0a 25 11 04 6f 90 01 03 0a 25 18 90 00 } //1
		$a_03_1 = {11 11 11 12 9a 13 13 11 13 6f 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 39 90 01 03 00 02 7b 90 01 03 04 7e 90 01 03 0a 28 90 01 03 0a 2c 0b 02 90 00 } //1
		$a_03_2 = {0a 25 16 6f 90 01 03 0a 28 90 01 03 0a 7d 90 01 03 04 16 13 09 72 90 01 03 70 13 0a 17 13 0b 16 13 0c 28 90 01 03 0a 13 0d 38 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}