
rule TrojanClicker_Win32_Agent_DF{
	meta:
		description = "TrojanClicker:Win32/Agent.DF,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 68 74 74 70 3a 2f 2f 67 6f 2e 25 36 43 25 36 31 25 36 39 25 36 43 25 36 35 25 36 31 2e 25 36 39 25 36 45 25 36 36 25 36 46 2f 3f 69 3d } //01 00 
		$a_01_1 = {53 65 74 75 70 00 45 78 65 63 53 68 65 6c 6c 3a 20 00 43 6f 70 79 20 44 65 74 61 69 6c 73 20 54 6f 20 43 6c 69 70 62 6f 61 72 64 00 43 75 73 74 6f 6d 00 4e 61 6d 65 } //00 00 
	condition:
		any of ($a_*)
 
}