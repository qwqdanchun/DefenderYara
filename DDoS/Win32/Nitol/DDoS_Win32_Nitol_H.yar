
rule DDoS_Win32_Nitol_H{
	meta:
		description = "DDoS:Win32/Nitol.H,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {89 44 24 18 ff d7 bb 02 01 00 00 eb 28 ff d6 3b 44 24 10 72 2d 2b 44 24 10 3d 00 dd 6d 00 77 22 ff 15 } //01 00 
		$a_03_1 = {e9 1b 01 00 00 56 8b 35 90 01 04 57 8b 7d 08 8d 85 e8 fb ff ff 81 ff 00 01 00 00 73 11 68 90 00 } //01 00 
		$a_01_2 = {ff d3 85 c0 75 42 83 bd b4 f9 ff ff 00 75 39 81 bd b8 f9 ff ff 00 00 20 03 73 2d } //01 00 
		$a_01_3 = {73 00 22 00 20 00 61 00 20 00 2d 00 72 00 20 00 2d 00 65 00 70 00 31 00 22 00 25 00 73 00 22 00 20 00 22 00 25 00 73 00 22 00 20 00 22 00 25 00 73 00 5c 00 6c 00 70 00 6b 00 2e 00 64 00 6c 00 6c 00 22 00 } //01 00 
		$a_01_4 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 25 00 73 00 20 00 76 00 62 00 20 00 22 00 25 00 73 00 22 00 20 00 6c 00 70 00 6b 00 2e 00 64 00 6c 00 6c 00 7c 00 66 00 69 00 6e 00 64 00 20 00 2f 00 69 00 20 00 22 00 6c 00 70 00 6b 00 2e 00 64 00 6c 00 6c 00 22 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}