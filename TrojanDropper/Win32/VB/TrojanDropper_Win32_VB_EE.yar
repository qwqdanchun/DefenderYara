
rule TrojanDropper_Win32_VB_EE{
	meta:
		description = "TrojanDropper:Win32/VB.EE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {56 42 41 36 2e 44 4c 4c } //01 00 
		$a_00_1 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 30 00 30 00 31 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 44 00 69 00 73 00 6b 00 5c 00 45 00 6e 00 75 00 6d 00 } //01 00 
		$a_03_2 = {04 68 ff 6c 74 ff 04 60 ff 34 6c 60 ff f5 00 00 00 00 f5 01 00 00 00 f5 00 00 00 00 6c 70 ff 5e 90 01 04 71 58 ff 3c 6c 60 ff 04 74 ff fc 58 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}