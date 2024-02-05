
rule TrojanDropper_Win32_Bamital_B{
	meta:
		description = "TrojanDropper:Win32/Bamital.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {58 3d 05 40 00 80 75 0a e8 90 01 04 e8 90 01 04 6a 00 e8 90 00 } //01 00 
		$a_01_1 = {8a e0 88 21 8b 4d f8 83 c2 02 83 ea 01 58 8b c8 e2 84 } //00 00 
	condition:
		any of ($a_*)
 
}