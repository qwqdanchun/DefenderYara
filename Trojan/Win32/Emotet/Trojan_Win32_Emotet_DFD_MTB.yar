
rule Trojan_Win32_Emotet_DFD_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 45 e8 0f b6 84 05 90 01 04 0f b6 4d 17 03 c1 99 8b cb f7 f9 8b 45 e4 8a 8c 15 90 1b 00 30 08 90 00 } //01 00 
		$a_81_1 = {63 6f 52 43 43 4a 37 32 71 33 70 68 30 6c 4d 59 6b 6e 39 64 65 37 34 4e 4b 79 30 79 62 4e 79 79 6a 78 45 58 6b 38 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_DFD_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.DFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {03 c2 99 f7 bd 90 01 04 0f b6 84 15 90 01 04 8b 4d 10 03 8d 90 01 04 0f b6 11 33 d0 8b 45 10 03 85 90 1b 02 88 10 90 00 } //01 00 
		$a_81_1 = {4c 6f 6b 56 37 44 35 6a 66 72 69 34 56 6a 48 50 64 31 6d 74 56 31 70 70 4e 4a 71 73 47 68 35 38 42 6a 67 6d 52 6f 42 44 4d 45 69 77 58 46 50 } //00 00 
	condition:
		any of ($a_*)
 
}