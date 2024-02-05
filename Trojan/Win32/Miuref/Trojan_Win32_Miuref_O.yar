
rule Trojan_Win32_Miuref_O{
	meta:
		description = "Trojan:Win32/Miuref.O,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 10 80 f2 90 01 01 80 ea 90 01 01 41 88 10 81 f9 00 2c 00 00 72 e7 90 09 06 00 8d 81 90 01 03 10 90 00 } //01 00 
		$a_03_1 = {be 80 38 01 00 33 ff ff 15 90 01 03 10 ff 35 90 01 03 10 83 c6 50 ff 15 90 01 03 10 83 c7 32 3b fe 7c e4 90 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}