
rule Trojan_Win32_Inject_AL{
	meta:
		description = "Trojan:Win32/Inject.AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {6a 40 68 00 10 00 00 05 2a 01 00 00 50 6a 00 57 ff 15 90 01 04 8b f0 85 f6 74 90 01 01 8b 1d 90 01 04 8d 54 24 10 52 68 29 01 00 00 68 90 00 } //01 00 
		$a_02_1 = {6a 40 68 00 10 00 00 05 2a 01 00 00 50 6a 00 ff 75 90 01 01 ff 15 90 01 04 89 45 90 01 01 85 c0 74 90 01 01 56 8b 35 90 01 04 8d 4d 90 01 01 51 68 29 01 00 00 68 90 00 } //01 00 
		$a_00_2 = {2f 61 6a 61 78 2e 70 68 70 } //01 00 
		$a_00_3 = {62 6e 5f 6d 61 69 6c } //01 00 
		$a_00_4 = {64 61 6f 37 65 72 6d 73 5f } //00 00 
	condition:
		any of ($a_*)
 
}