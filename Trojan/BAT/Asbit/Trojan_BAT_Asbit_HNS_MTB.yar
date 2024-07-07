
rule Trojan_BAT_Asbit_HNS_MTB{
	meta:
		description = "Trojan:BAT/Asbit.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {2e 00 65 00 78 00 65 00 00 05 36 00 34 00 90 02 04 0d 2f 00 75 00 20 00 7b 00 30 00 7d 00 00 90 01 01 68 00 74 00 74 00 70 00 90 00 } //2
		$a_03_1 = {73 68 66 6f 6c 64 65 72 2e 64 6c 6c 90 02 20 47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d 90 00 } //2
		$a_03_2 = {53 79 73 74 65 6d 2e 54 65 78 74 90 09 22 00 90 02 22 53 74 61 72 74 90 02 15 57 65 62 52 65 71 75 65 73 74 90 00 } //2
		$a_01_3 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //2 GetRuntimeDirectory
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}