
rule TrojanDropper_Win32_Agent_DZ{
	meta:
		description = "TrojanDropper:Win32/Agent.DZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {8d 34 01 8b c1 99 f7 fb 8a 06 2a c1 32 04 3a 41 3b 4c 24 90 01 01 88 06 7c e4 90 00 } //02 00 
		$a_03_1 = {80 34 30 60 40 3b 45 90 01 01 72 f6 90 00 } //01 00 
		$a_01_2 = {66 42 58 60 5d 47 4b 5f 60 5d } //01 00 
		$a_01_3 = {4a 4e 4d 5e 4b 4a 5e 5d 62 1f 67 64 64 } //03 00 
		$a_01_4 = {0e 06 0f 06 09 0c 0e 10 21 12 0f 0d 13 29 1b 60 1b 13 2c 1b 8b 20 8b 2c 18 1e 1e 24 2a 29 1f 2c 96 94 97 9f } //00 00 
	condition:
		any of ($a_*)
 
}