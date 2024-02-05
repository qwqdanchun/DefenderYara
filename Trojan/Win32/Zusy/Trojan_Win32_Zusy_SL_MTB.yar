
rule Trojan_Win32_Zusy_SL_MTB{
	meta:
		description = "Trojan:Win32/Zusy.SL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {4d 52 43 6f 72 70 6f 72 61 74 69 6f 6e 2e 65 78 65 } //01 00 
		$a_81_1 = {4d 52 43 6f 72 70 6f 72 61 74 69 6f 6e 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00 
		$a_81_2 = {4d 52 43 6f 72 70 6f 72 61 74 69 6f 6e 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_3 = {53 6f 34 30 51 32 71 36 4b 78 33 4a 4a 77 31 4b } //00 00 
	condition:
		any of ($a_*)
 
}