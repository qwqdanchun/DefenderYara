
rule TrojanDropper_Win32_Agent_EAG{
	meta:
		description = "TrojanDropper:Win32/Agent.EAG,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {fe 08 8b 45 90 01 01 8b 4d 90 01 01 01 c1 8b 45 90 01 01 8b 55 90 01 01 01 c2 b0 fa 32 02 88 01 8d 45 fc ff 00 90 00 } //01 00 
		$a_01_1 = {8e 8a a7 ba 90 89 89 a0 95 8f ad a0 89 8a 94 96 95 a7 a9 90 95 } //01 00 
		$a_01_2 = {a9 bc a9 d8 8b 9c 9a 92 9c 9e a0 89 d5 a0 83 a0 } //01 00 
		$a_01_3 = {8a 93 a0 97 97 a7 bc ad a7 9a 96 98 98 9c 95 9f c8 } //00 00 
	condition:
		any of ($a_*)
 
}