
rule Trojan_Win32_Vugatini_A_dha{
	meta:
		description = "Trojan:Win32/Vugatini.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {88 4a 02 c1 e9 08 88 4a 01 c1 e9 08 88 0a 83 c2 03 33 c9 8d 71 04 } //01 00 
		$a_01_1 = {c1 e9 02 88 4a 01 c1 e9 08 83 c0 02 88 0a 8b 4d fc } //01 00 
		$a_01_2 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 56 47 41 75 74 68 43 4c 49 2e 62 69 6e } //01 00 
		$a_01_3 = {56 47 41 75 74 68 2e 64 6c 6c 00 76 6d } //00 00 
	condition:
		any of ($a_*)
 
}