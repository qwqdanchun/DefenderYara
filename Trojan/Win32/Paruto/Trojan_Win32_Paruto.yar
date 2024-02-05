
rule Trojan_Win32_Paruto{
	meta:
		description = "Trojan:Win32/Paruto,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a c2 8a 4c 14 90 01 01 f6 ea 04 03 84 c9 74 0a 3a c8 74 06 32 c8 88 4c 14 90 01 01 42 81 fa 90 00 } //01 00 
		$a_03_1 = {6a 02 50 ff 90 01 01 81 fb 02 01 00 00 74 90 01 01 81 fd 02 01 00 00 74 90 01 01 81 ff 02 01 00 00 74 90 01 01 a1 90 01 04 5d 85 c0 74 90 01 01 6a ff 50 ff d6 90 00 } //01 00 
		$a_03_2 = {25 03 00 00 80 79 90 01 01 48 83 c8 fc 40 40 8d 04 40 8d 04 80 8d 04 80 8d 04 80 8d 04 80 c1 e0 04 90 00 } //01 00 
		$a_03_3 = {83 c9 ff 33 c0 f2 ae f7 d1 49 83 f9 40 0f 83 90 01 02 00 00 85 d2 0f 8e 90 01 02 00 00 81 fa ff ff 00 00 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}