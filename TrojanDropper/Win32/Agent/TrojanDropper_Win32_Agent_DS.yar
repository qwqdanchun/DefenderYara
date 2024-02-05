
rule TrojanDropper_Win32_Agent_DS{
	meta:
		description = "TrojanDropper:Win32/Agent.DS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5a 77 4c 6f 61 64 44 72 69 76 65 72 } //01 00 
		$a_03_1 = {ff d6 50 ff d7 89 45 90 01 01 60 ff 75 90 01 01 8d bd 90 01 02 ff ff 57 ff 55 90 01 01 8d bd 90 01 02 ff ff 57 ff 55 90 01 01 61 90 00 } //01 00 
		$a_01_2 = {66 8b 02 8b e8 81 e5 00 f0 00 00 81 fd 00 30 00 00 75 31 8b 5c 24 10 8b 6c 24 28 43 25 ff 0f 00 00 89 5c 24 10 8b 19 03 c3 8b 1c 30 2b 5d 1c 8b 6c 24 2c 3b dd 75 09 66 81 7c 30 fe c7 05 } //00 00 
	condition:
		any of ($a_*)
 
}