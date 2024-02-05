
rule TrojanDropper_Win32_Cutwail_AW{
	meta:
		description = "TrojanDropper:Win32/Cutwail.AW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {80 3c 08 c2 75 0d 38 54 08 01 75 07 80 7c 08 02 00 } //01 00 
		$a_01_1 = {89 46 08 8b 48 3c 03 c8 89 4e 0c 5e } //01 00 
		$a_03_2 = {0f b7 54 18 06 8b 4c 18 28 03 c3 8d 14 92 8d 90 01 01 d0 d0 00 00 00 03 cb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}