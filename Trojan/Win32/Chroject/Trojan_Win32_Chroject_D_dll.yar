
rule Trojan_Win32_Chroject_D_dll{
	meta:
		description = "Trojan:Win32/Chroject.D!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 40 08 8b 4d 08 6a 00 6a 00 50 51 6a 00 e8 90 01 04 8b 55 00 85 c0 8b 42 08 8b cd 7d 1b ff d0 90 00 } //02 00 
		$a_03_1 = {2a 2a 6a 73 75 11 81 bc 24 90 01 02 00 00 6d 73 67 7c 90 00 } //02 00 
		$a_01_2 = {8b 06 8b 50 04 8b ce ff d2 8b 44 24 10 53 8a 18 80 f3 } //01 00 
		$a_01_3 = {8b 55 08 8a 14 16 90 38 14 19 74 14 } //01 00 
		$a_01_4 = {83 7e 10 04 76 0e 8b 46 08 80 78 04 3a 75 05 bf 07 00 00 00 } //01 00 
		$a_01_5 = {83 ff 04 76 0e 8b 4e 08 80 79 04 3a 75 05 b8 07 00 00 00 } //01 00 
		$a_00_6 = {43 68 61 72 67 65 72 2e 64 6c 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}