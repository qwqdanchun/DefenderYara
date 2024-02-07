
rule Trojan_Win32_Orbus_D{
	meta:
		description = "Trojan:Win32/Orbus.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 61 6d 65 32 46 6c 6f 6f 64 00 } //01 00 
		$a_01_1 = {57 65 62 57 58 43 43 46 6c 6f 6f 64 00 } //01 00 
		$a_01_2 = {57 65 62 44 6f 77 6e 46 69 6c 65 46 6c 6f 6f 64 00 } //01 00 
		$a_01_3 = {44 49 59 54 43 50 46 6c 6f 6f 64 00 } //01 00  䥄呙偃汆潯d
		$a_01_4 = {44 65 66 67 68 69 6a 6b 20 4d 6e 6f 70 71 72 73 74 75 } //01 00  Defghijk Mnopqrstu
		$a_01_5 = {25 64 2a 25 64 4d 48 7a 00 00 00 00 7e 4d 48 7a } //00 00 
		$a_00_6 = {5d 04 00 00 } //80 23 
	condition:
		any of ($a_*)
 
}