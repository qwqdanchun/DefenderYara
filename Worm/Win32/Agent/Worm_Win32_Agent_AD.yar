
rule Worm_Win32_Agent_AD{
	meta:
		description = "Worm:Win32/Agent.AD,SIGNATURE_TYPE_PEHSTR_EXT,ffffff85 00 ffffff85 00 09 00 00 64 00 "
		
	strings :
		$a_00_0 = {8a c2 30 44 24 6c 8b 4c 24 6c c1 e9 08 32 c8 88 4c 24 6d 8b 54 24 6c c1 ea 10 32 d0 } //0a 00 
		$a_00_1 = {25 57 49 4e 44 49 52 25 5c 74 70 75 70 2e 65 78 65 } //0a 00 
		$a_00_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 74 70 75 70 2e 65 78 65 } //0a 00 
		$a_00_3 = {56 43 32 30 58 43 30 30 55 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00 
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00 
		$a_00_7 = {57 53 41 53 65 6e 64 } //01 00 
		$a_01_8 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}