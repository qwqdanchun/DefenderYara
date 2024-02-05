
rule TrojanDropper_Win32_VB_IP{
	meta:
		description = "TrojanDropper:Win32/VB.IP,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {62 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {63 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {64 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {65 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_5 = {66 00 6d 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}