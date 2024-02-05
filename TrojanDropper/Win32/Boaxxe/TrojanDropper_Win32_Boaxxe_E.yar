
rule TrojanDropper_Win32_Boaxxe_E{
	meta:
		description = "TrojanDropper:Win32/Boaxxe.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d2 8a 11 8b 45 f8 c1 e8 03 25 ff 00 00 00 0f be c8 33 d1 8b 45 90 01 01 03 45 fc 88 10 90 00 } //01 00 
		$a_03_1 = {73 09 c7 45 f4 90 01 01 00 00 00 eb 07 c7 45 f4 90 01 01 00 00 00 81 7d f8 90 01 02 00 00 76 07 c7 45 f4 90 01 01 00 00 00 83 7d f8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}