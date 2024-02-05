
rule Trojan_Win32_Fiya_A{
	meta:
		description = "Trojan:Win32/Fiya.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 62 78 31 2e 62 61 6b } //01 00 
		$a_01_1 = {5c 62 78 31 2e 65 78 65 } //01 00 
		$a_01_2 = {66 61 73 74 20 75 61 78 } //01 00 
		$a_01_3 = {72 62 00 00 77 62 00 00 6f 70 65 6e 00 00 00 00 72 75 6e 61 73 } //00 00 
	condition:
		any of ($a_*)
 
}