
rule Trojan_Win32_XtremeRat_A_MTB{
	meta:
		description = "Trojan:Win32/XtremeRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {58 74 72 65 6d 65 4b 65 } //01 00 
		$a_81_1 = {66 74 70 2e 66 74 70 73 65 72 76 65 72 2e 63 6f 6d } //01 00 
		$a_81_2 = {58 74 72 65 6d 65 20 52 41 54 } //01 00 
		$a_81_3 = {25 4e 4f 49 4e 4a 45 43 54 25 } //01 00 
		$a_81_4 = {72 65 73 74 61 72 74 } //00 00 
	condition:
		any of ($a_*)
 
}