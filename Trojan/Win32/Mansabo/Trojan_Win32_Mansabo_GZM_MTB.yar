
rule Trojan_Win32_Mansabo_GZM_MTB{
	meta:
		description = "Trojan:Win32/Mansabo.GZM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {6b 00 66 89 7c 24 48 66 90 01 03 50 33 00 66 90 01 03 52 32 00 66 90 01 03 54 66 90 01 03 56 66 90 01 03 5c 66 90 01 03 1a 66 90 01 03 1c 66 90 01 03 22 66 90 01 03 24 66 90 01 03 2a 66 90 01 03 2c 6d 00 66 90 01 03 2e 73 00 66 90 01 03 30 76 00 66 90 01 03 32 63 00 66 90 01 03 34 66 89 74 24 36 66 89 54 24 38 66 89 4c 24 3a 66 89 5c 24 40 90 00 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00  VirtualProtect
	condition:
		any of ($a_*)
 
}