
rule Trojan_Win32_Mediyes_D{
	meta:
		description = "Trojan:Win32/Mediyes.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b c5 8a 54 38 ff 30 14 3b 83 c7 01 3b 7e 14 72 ca 83 7c 24 44 10 } //01 00 
		$a_00_1 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 57 00 69 00 6e 00 53 00 78 00 70 00 } //01 00 
		$a_00_2 = {64 00 57 00 57 00 1d 00 } //01 00 
		$a_01_3 = {4d 34 37 3a 3b 3f 15 0b 28 2f 05 09 00 } //00 00 
	condition:
		any of ($a_*)
 
}