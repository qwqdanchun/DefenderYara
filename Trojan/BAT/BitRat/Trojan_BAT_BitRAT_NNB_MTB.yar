
rule Trojan_BAT_BitRAT_NNB_MTB{
	meta:
		description = "Trojan:BAT/BitRAT.NNB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 9d 00 00 0a 9c 25 17 12 06 28 90 01 01 00 00 0a 9c 25 18 12 06 28 90 01 01 00 00 0a 9c 13 09 07 11 09 6f 90 01 01 00 00 0a 90 00 } //01 00 
		$a_01_1 = {65 00 65 00 66 00 32 00 66 00 } //01 00  eef2f
		$a_01_2 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 52 00 65 00 63 00 75 00 72 00 73 00 69 00 76 00 65 00 46 00 6f 00 72 00 6d 00 43 00 72 00 65 00 61 00 74 00 65 00 } //01 00  WinForms_RecursiveFormCreate
		$a_01_3 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 53 00 65 00 65 00 49 00 6e 00 6e 00 65 00 72 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 } //00 00  WinForms_SeeInnerException
	condition:
		any of ($a_*)
 
}