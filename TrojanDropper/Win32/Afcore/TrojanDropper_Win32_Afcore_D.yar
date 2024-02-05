
rule TrojanDropper_Win32_Afcore_D{
	meta:
		description = "TrojanDropper:Win32/Afcore.D,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {b8 00 00 00 80 50 50 56 56 68 00 00 df 00 57 57 56 } //01 00 
		$a_02_1 = {b8 00 00 00 80 50 50 56 56 68 00 00 df 00 68 90 01 03 00 68 90 01 03 00 56 ff 15 90 00 } //01 00 
		$a_02_2 = {b8 00 00 00 80 50 50 56 56 68 00 00 df 00 ff 90 01 02 ff 90 01 02 56 ff 15 90 00 } //0a 00 
		$a_02_3 = {83 ec 40 48 74 90 01 01 48 74 90 01 01 83 e8 0d 74 90 01 01 2d f1 03 00 00 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}