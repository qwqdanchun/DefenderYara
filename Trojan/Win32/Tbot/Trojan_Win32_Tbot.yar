
rule Trojan_Win32_Tbot{
	meta:
		description = "Trojan:Win32/Tbot,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 72 65 67 69 73 74 65 72 2e 70 68 70 00 } //01 00 
		$a_01_1 = {53 45 43 53 45 52 56 45 52 00 } //01 00  䕓千剅䕖R
		$a_01_2 = {2f 63 6f 6d 6d 61 6e 64 2e 70 68 70 00 } //01 00 
		$a_01_3 = {5c 63 74 66 6d 6f 6e 2e 65 78 65 00 } //01 00 
		$a_01_4 = {64 73 62 66 6a 64 61 67 72 34 35 32 33 } //00 00  dsbfjdagr4523
	condition:
		any of ($a_*)
 
}