
rule Trojan_Win32_Wusub_A{
	meta:
		description = "Trojan:Win32/Wusub.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {88 0c 06 88 1c 02 0f b6 0c 06 0f b6 d3 03 d1 0f b6 ca 8b 55 fc 0f b6 0c 01 30 0c 17 47 8a 55 0b 3b 7d f8 72 } //01 00 
		$a_01_1 = {b9 66 bd 7d b8 e8 } //01 00 
		$a_01_2 = {b9 e3 06 e0 fd e8 } //01 00 
		$a_00_3 = {2f 00 43 00 20 00 6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 20 00 73 00 74 00 6f 00 70 00 20 00 66 00 6f 00 75 00 6e 00 64 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_00_4 = {51 00 48 00 41 00 43 00 54 00 49 00 56 00 45 00 44 00 45 00 46 00 45 00 4e 00 53 00 45 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_00_5 = {42 00 55 00 4c 00 4c 00 47 00 55 00 41 00 52 00 44 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_00_6 = {25 73 5c 4d 69 63 72 6f 73 6f 66 74 73 20 48 65 6c 70 5c 77 73 75 73 2e 65 78 65 } //01 00 
		$a_00_7 = {2f 43 20 6e 65 74 20 75 73 65 72 20 2f 64 6f 6d 61 69 6e } //00 00 
		$a_00_8 = {5d 04 00 00 87 d0 } //03 80 
	condition:
		any of ($a_*)
 
}