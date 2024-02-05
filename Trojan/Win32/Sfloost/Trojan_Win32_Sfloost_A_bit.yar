
rule Trojan_Win32_Sfloost_A_bit{
	meta:
		description = "Trojan:Win32/Sfloost.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {8a 1e 2a d1 02 d3 80 ea 90 01 01 46 88 90 01 05 40 4f 75 e6 90 00 } //01 00 
		$a_01_1 = {49 70 74 61 62 4c 65 78 20 53 65 72 76 69 63 65 73 } //01 00 
		$a_01_2 = {47 6c 6f 62 61 6c 5c 68 62 6c 6c 78 78 78 78 53 65 72 76 65 72 } //01 00 
		$a_01_3 = {47 6c 6f 62 61 6c 5c 68 62 6c 6c 78 78 78 78 43 6c 69 65 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}