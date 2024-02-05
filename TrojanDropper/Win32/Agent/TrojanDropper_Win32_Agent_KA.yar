
rule TrojanDropper_Win32_Agent_KA{
	meta:
		description = "TrojanDropper:Win32/Agent.KA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {c6 40 05 e9 8b 45 90 01 01 2b 05 90 01 04 83 e8 05 8b 0d 90 01 04 89 90 01 01 06 90 00 } //01 00 
		$a_01_1 = {64 a1 30 00 00 00 8b 50 0c 8b 42 1c 8b 00 8b 40 08 } //01 00 
		$a_00_2 = {6a 0a 99 59 f7 f9 80 c2 30 } //01 00 
		$a_01_3 = {c6 45 a2 69 c6 45 a3 66 c6 45 a4 20 c6 45 a5 20 c6 45 a6 20 c6 45 a7 65 c6 45 a8 78 c6 45 a9 69 } //01 00 
		$a_03_4 = {47 65 74 50 c7 45 90 01 01 72 6f 63 41 90 00 } //01 00 
		$a_00_5 = {43 61 6e 63 65 6c 44 6c 6c 00 4c 6f 61 64 44 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}