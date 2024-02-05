
rule Trojan_Win32_Killav_FC{
	meta:
		description = "Trojan:Win32/Killav.FC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_02_0 = {74 11 eb 04 3b 90 01 01 74 41 90 01 01 3b 90 01 01 0f 8e 90 01 02 ff ff eb 09 90 00 } //01 00 
		$a_02_1 = {85 c0 74 09 81 7d 90 01 01 03 01 00 00 75 11 90 00 } //01 00 
		$a_00_2 = {61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 36 00 39 00 35 00 33 00 45 00 41 00 36 00 30 00 2d 00 38 00 44 00 35 00 46 00 2d 00 34 00 35 00 32 00 39 00 2d 00 38 00 37 00 31 00 30 00 2d 00 34 00 32 00 46 00 38 00 45 00 44 00 } //01 00 
		$a_00_3 = {6e 64 6f 77 73 5c 41 6e 74 69 56 69 72 75 73 2e 73 79 73 } //01 00 
		$a_00_4 = {72 76 69 63 65 73 5c 64 72 6d 6b 61 75 64 } //01 00 
		$a_00_5 = {30 4b 56 53 72 76 58 50 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}