
rule Trojan_Win32_Opalcot_sys{
	meta:
		description = "Trojan:Win32/Opalcot!sys,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {8b 45 0c c7 40 18 0d 00 00 c0 8b 4d 0c 8b 51 18 89 55 e4 32 d2 } //01 00 
		$a_00_1 = {8d 45 fc 50 6a 00 6a 00 68 32 38 59 00 8d 4d f4 51 6a 00 8b 55 08 52 } //02 00 
		$a_00_2 = {50 0f 20 c0 25 ff ff fe ff 0f 22 c0 58 a1 } //02 00 
		$a_00_3 = {89 45 fc 50 0f 20 c0 0d 00 00 01 00 0f 22 c0 58 8b 45 fc } //02 00 
		$a_01_4 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //01 00  KeServiceDescriptorTable
		$a_00_5 = {01 00 00 75 0a b8 01 00 00 c0 e9 } //01 00 
		$a_00_6 = {44 65 76 69 63 65 5c 4b 57 61 74 63 68 } //01 00  Device\KWatch
		$a_00_7 = {8b 45 f8 8b 48 0c 89 4d ec 8b 55 ec 89 55 d4 81 7d d4 10 09 32 38 74 02 } //01 00 
		$a_00_8 = {83 7d fc 08 72 21 8b 45 f4 8b 48 04 51 8b 55 f4 8b 02 50 } //00 00 
	condition:
		any of ($a_*)
 
}