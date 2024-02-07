
rule Trojan_BAT_Mitator_A{
	meta:
		description = "Trojan:BAT/Mitator.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {49 6e 73 74 61 6c 6c 48 4b 43 55 } //02 00  InstallHKCU
		$a_01_1 = {44 69 73 61 62 6c 65 55 41 43 } //01 00  DisableUAC
		$a_03_2 = {1f 1d 0f 00 1a 28 90 01 01 00 00 06 90 00 } //01 00 
		$a_03_3 = {1f 1d 0f 01 1a 28 90 01 01 00 00 06 90 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 89 
	condition:
		any of ($a_*)
 
}