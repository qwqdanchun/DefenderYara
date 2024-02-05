
rule TrojanDropper_Win32_Nonaco_A{
	meta:
		description = "TrojanDropper:Win32/Nonaco.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8d 85 f8 fd ff ff 50 8d 85 30 f9 ff ff 50 8d 85 30 f5 ff ff } //01 00 
		$a_03_1 = {74 39 ff 15 90 01 02 40 00 6a 14 33 d2 59 f7 f1 52 90 00 } //01 00 
		$a_01_2 = {00 84 1d 00 fc ff ff 43 ff d6 8b d0 8d bd 00 fc ff ff 83 c9 ff } //00 00 
	condition:
		any of ($a_*)
 
}