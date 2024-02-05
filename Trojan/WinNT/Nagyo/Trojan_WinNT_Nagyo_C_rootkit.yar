
rule Trojan_WinNT_Nagyo_C_rootkit{
	meta:
		description = "Trojan:WinNT/Nagyo.C!rootkit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {7b 00 32 00 33 00 32 00 66 00 34 00 65 00 33 00 66 00 32 00 2d 00 62 00 61 00 62 00 38 00 2d 00 31 00 31 00 64 00 30 00 2d 00 39 00 37 00 62 00 39 00 2d 00 30 00 30 00 63 00 30 00 34 00 66 00 39 00 38 00 62 00 63 00 62 00 39 00 7d 00 } //01 00 
		$a_00_1 = {7b 00 32 00 35 00 36 00 64 00 63 00 35 00 65 00 30 00 65 00 2d 00 37 00 63 00 34 00 36 00 2d 00 31 00 31 00 64 00 33 00 2d 00 62 00 35 00 62 00 66 00 2d 00 30 00 30 00 30 00 30 00 66 00 38 00 36 00 39 00 35 00 36 00 32 00 31 00 7d 00 } //01 00 
		$a_03_2 = {ff 75 14 ff 75 10 ff 75 0c ff 75 08 ff 15 90 01 02 01 00 33 c9 3b c1 89 45 10 0f 8c 90 01 02 00 00 81 7d 1c 03 00 12 00 0f 85 90 01 02 00 00 38 0e 90 00 } //01 00 
		$a_03_3 = {ff 75 14 ff 75 10 ff 75 0c ff 75 08 ff 15 90 01 02 01 00 8b c8 85 c9 89 4d 18 7c 19 8b 45 24 48 74 90 01 01 48 74 90 01 01 48 74 90 01 01 83 e8 09 74 90 01 01 83 e8 19 74 90 01 01 48 74 90 01 01 8b c1 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}