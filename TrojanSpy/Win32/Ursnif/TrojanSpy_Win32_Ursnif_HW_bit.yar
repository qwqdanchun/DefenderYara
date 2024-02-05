
rule TrojanSpy_Win32_Ursnif_HW_bit{
	meta:
		description = "TrojanSpy:Win32/Ursnif.HW!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 2f 00 43 00 20 00 22 00 63 00 6f 00 70 00 79 00 20 00 22 00 25 00 73 00 22 00 20 00 22 00 25 00 73 00 22 00 20 00 2f 00 79 00 20 00 26 00 26 00 20 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 } //01 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_01_2 = {76 65 72 73 69 6f 6e 3d 25 75 26 73 6f 66 74 3d 31 26 75 73 65 72 3d 25 30 38 78 25 30 38 78 25 30 38 78 25 30 38 78 26 73 65 72 76 65 72 3d 25 75 26 69 64 3d 25 75 26 74 79 70 65 3d 25 75 26 6e 61 6d 65 3d 25 73 } //02 00 
		$a_03_3 = {8b 16 85 d2 89 55 90 01 01 74 19 ff 45 90 01 01 8a 4d 90 01 01 33 d7 8b 7d 90 01 01 33 d0 d3 ca 89 16 83 c6 90 01 01 ff 4d 90 01 01 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}