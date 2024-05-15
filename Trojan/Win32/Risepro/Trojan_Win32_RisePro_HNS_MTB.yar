
rule Trojan_Win32_RisePro_HNS_MTB{
	meta:
		description = "Trojan:Win32/RisePro.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 06 01 1e 83 c6 04 49 eb f2 5e 59 5b 58 } //01 00 
		$a_01_1 = {6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 00 00 00 00 36 00 07 00 01 00 46 00 69 00 6c } //01 00 
		$a_01_2 = {4c 00 65 00 67 00 61 00 6c 00 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 00 00 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 20 00 a9 00 20 00 20 00 32 00 30 00 32 00 33 } //01 00 
		$a_01_3 = {46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 6f 00 66 00 66 00 44 00 65 00 66 00 2e 00 65 00 78 00 65 00 00 00 00 00 2e 00 07 00 01 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 00 00 00 00 6f 00 66 00 66 00 44 00 65 } //00 00 
	condition:
		any of ($a_*)
 
}