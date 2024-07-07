
rule Trojan_Win64_Anorocuriv_MTB{
	meta:
		description = "Trojan:Win64/Anorocuriv!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {53 00 69 00 6e 00 67 00 61 00 70 00 6f 00 72 00 65 00 20 00 68 00 61 00 73 00 20 00 90 02 06 20 00 63 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 65 00 64 00 20 00 63 00 61 00 73 00 65 00 73 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 76 00 69 00 72 00 75 00 73 00 90 00 } //1
		$a_02_1 = {54 00 68 00 65 00 20 00 72 00 65 00 73 00 74 00 72 00 69 00 63 00 74 00 69 00 6f 00 6e 00 73 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 61 00 6e 00 20 00 74 00 72 00 61 00 76 00 65 00 6c 00 20 00 74 00 6f 00 20 00 74 00 68 00 65 00 20 00 55 00 53 00 20 00 66 00 72 00 6f 00 6d 00 20 00 90 02 04 20 00 45 00 75 00 72 00 6f 00 70 00 65 00 61 00 6e 00 20 00 63 00 6f 00 75 00 6e 00 74 00 72 00 69 00 65 00 73 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}