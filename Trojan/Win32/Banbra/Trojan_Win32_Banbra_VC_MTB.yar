
rule Trojan_Win32_Banbra_VC_MTB{
	meta:
		description = "Trojan:Win32/Banbra.VC!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 45 54 20 2f 67 6f 72 58 } //01 00 
		$a_01_1 = {2f 67 6f 72 64 69 6e 68 61 2e 70 61 63 } //01 00 
		$a_01_2 = {73 62 6d 75 6c 74 69 6d 61 72 63 61 73 2e 69 6e 66 6f } //01 00 
		$a_01_3 = {3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 61 00 61 00 64 00 37 00 2e 00 70 00 61 00 63 00 } //00 00 
	condition:
		any of ($a_*)
 
}