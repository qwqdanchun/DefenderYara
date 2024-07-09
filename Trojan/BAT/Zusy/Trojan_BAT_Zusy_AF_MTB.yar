
rule Trojan_BAT_Zusy_AF_MTB{
	meta:
		description = "Trojan:BAT/Zusy.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 25 25 02 28 ?? 00 00 06 6f ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 06 13 ?? 6f ?? 00 00 0a 14 26 28 } //4
		$a_03_1 = {0d 25 25 02 28 ?? 00 00 06 6f ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 06 26 6f ?? 00 00 0a 14 26 09 72 } //4
		$a_03_2 = {0d 25 25 02 28 ?? 00 00 06 6f ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 06 13 ?? 6f ?? 00 00 0a 14 26 28 } //4
		$a_01_3 = {77 00 74 00 6f 00 6f 00 6c 00 73 00 2e 00 69 00 6f 00 2f 00 63 00 6f 00 64 00 65 00 2f 00 64 00 6c 00 } //1 wtools.io/code/dl
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*4+(#a_03_2  & 1)*4+(#a_01_3  & 1)*1) >=5
 
}