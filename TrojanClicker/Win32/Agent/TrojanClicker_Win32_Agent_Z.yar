
rule TrojanClicker_Win32_Agent_Z{
	meta:
		description = "TrojanClicker:Win32/Agent.Z,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 03 00 "
		
	strings :
		$a_01_0 = {74 79 70 65 49 44 3d 74 65 78 74 76 72 26 75 69 64 3d } //02 00 
		$a_01_1 = {77 65 62 73 69 74 65 6c 61 73 74 6d } //02 00 
		$a_01_2 = {26 6d 65 6d 50 61 72 61 6d 49 44 3d } //00 00 
	condition:
		any of ($a_*)
 
}