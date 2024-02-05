
rule TrojanSpy_Win32_Swisyn_H{
	meta:
		description = "TrojanSpy:Win32/Swisyn.H,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {66 83 7d fe 40 7e 63 66 83 7d fe 5a 7f 5c c7 04 24 14 00 00 00 } //01 00 
		$a_01_1 = {5b 42 72 6f 77 73 65 72 42 61 63 6b 5d } //01 00 
		$a_01_2 = {5b 4e 4c 31 5d } //01 00 
		$a_01_3 = {52 65 73 69 6d 20 63 65 6b 3a 5f 5f } //00 00 
	condition:
		any of ($a_*)
 
}