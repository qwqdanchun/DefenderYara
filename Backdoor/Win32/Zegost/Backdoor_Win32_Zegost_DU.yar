
rule Backdoor_Win32_Zegost_DU{
	meta:
		description = "Backdoor:Win32/Zegost.DU,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d fc 80 04 11 90 01 01 03 ca 8b 4d fc 80 34 11 90 01 01 03 ca 42 3b d0 7c e9 90 00 } //01 00 
		$a_03_1 = {53 50 c6 45 90 01 01 48 c6 45 90 01 01 61 c6 45 90 01 01 63 c6 45 90 01 01 6b c6 45 90 01 01 65 c6 45 90 01 01 72 90 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}