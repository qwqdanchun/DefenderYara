
rule Trojan_BAT_RedLine_EAC_MTB{
	meta:
		description = "Trojan:BAT/RedLine.EAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {06 0d 18 8d 90 01 01 00 00 01 13 04 11 04 16 28 90 01 01 00 00 0a a2 11 04 17 09 28 90 01 01 00 00 0a a2 11 04 13 05 08 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 72 90 01 03 70 6f 90 01 01 00 00 0a 72 90 01 03 70 20 00 01 00 00 14 14 11 05 74 90 01 01 00 00 1b 6f 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {42 00 4f 00 6f 00 6a 00 54 00 58 00 41 00 45 00 77 00 77 00 70 00 4b 00 6d 00 44 00 79 00 5a 00 70 00 31 00 36 00 76 00 39 00 33 00 62 00 4f 00 54 00 49 00 45 00 51 00 79 00 42 00 41 00 50 00 72 00 69 00 77 00 66 00 39 00 39 00 4d 00 74 00 71 00 69 00 74 00 6c 00 6d 00 42 00 6e 00 30 00 4d 00 77 00 70 00 44 00 53 00 74 00 65 00 64 00 5a 00 6c 00 4d 00 4d 00 72 00 6e 00 37 00 } //00 00  BOojTXAEwwpKmDyZp16v93bOTIEQyBAPriwf99MtqitlmBn0MwpDStedZlMMrn7
	condition:
		any of ($a_*)
 
}