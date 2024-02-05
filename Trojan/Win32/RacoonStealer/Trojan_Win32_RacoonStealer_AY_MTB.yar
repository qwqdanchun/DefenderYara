
rule Trojan_Win32_RacoonStealer_AY_MTB{
	meta:
		description = "Trojan:Win32/RacoonStealer.AY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {45 08 5f 89 30 5e 89 58 04 5b c9 c2 04 00 90 0a 2b 00 2b 75 90 01 01 8d 45 90 01 01 89 3d 90 01 04 e8 90 01 04 ff 4d 90 01 01 0f 85 90 01 04 8b 90 00 } //01 00 
		$a_01_1 = {4c 6f 63 61 6c 41 6c 6c 6f 63 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00 
	condition:
		any of ($a_*)
 
}