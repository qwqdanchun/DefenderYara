
rule Trojan_BAT_DllInjector_ZD_MTB{
	meta:
		description = "Trojan:BAT/DllInjector.ZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {30 00 30 00 30 00 77 00 65 00 62 00 68 00 6f 00 73 00 74 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //01 00  000webhostapp.com
		$a_00_1 = {45 00 6e 00 74 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 2e 00 } //01 00  Enter your Password.
		$a_00_2 = {43 00 68 00 65 00 61 00 74 00 20 00 43 00 6f 00 64 00 65 00 72 00 } //01 00  Cheat Coder
		$a_00_3 = {69 00 6e 00 6a 00 65 00 63 00 74 00 65 00 64 00 20 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 } //01 00  injected successfully
		$a_00_4 = {64 00 6f 00 72 00 69 00 74 00 6f 00 73 00 2e 00 63 00 6c 00 75 00 62 00 } //01 00  doritos.club
		$a_03_5 = {4d 00 65 00 67 00 61 00 44 00 75 00 6d 00 70 00 65 00 72 00 20 00 90 02 0a 20 00 62 00 79 00 20 00 43 00 6f 00 64 00 65 00 43 00 72 00 61 00 63 00 6b 00 65 00 72 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}