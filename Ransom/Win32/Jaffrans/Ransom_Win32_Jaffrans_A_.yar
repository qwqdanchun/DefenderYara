
rule Ransom_Win32_Jaffrans_A_{
	meta:
		description = "Ransom:Win32/Jaffrans.A!!Jaffrans.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 08 00 00 02 00 "
		
	strings :
		$a_03_0 = {c1 ee 18 3b cb 7d 08 8b 55 08 8a 14 11 eb 02 32 d2 c1 e0 08 0f be d2 0b c2 33 84 b5 90 01 04 41 3b cf 7c 90 00 } //02 00 
		$a_03_1 = {ff d3 ff d3 3d 16 00 09 80 0f 85 90 01 04 68 08 00 00 f0 6a 18 57 57 8d 4d fc 51 ff d6 90 00 } //02 00 
		$a_03_2 = {33 c0 8d 4b 41 52 66 89 45 90 01 01 88 4d 90 01 01 ff 15 90 01 04 83 f8 05 74 90 01 01 8d 45 90 01 01 50 ff 15 90 01 04 8d 4c 00 02 51 6a 08 ff 15 90 00 } //02 00 
		$a_03_3 = {66 8b 08 83 c0 02 66 85 c9 75 90 01 01 2b c2 d1 f8 8b d3 74 90 01 01 8b fe 8d 4d 90 01 01 2b f9 8d 9b 00 00 00 00 8a 8b 90 01 04 8d 34 57 32 4c 35 90 00 } //02 00 
		$a_00_4 = {6a 61 66 66 20 64 65 63 72 79 70 74 6f 72 20 73 79 73 74 65 6d } //01 00  jaff decryptor system
		$a_00_5 = {2e 00 78 00 6c 00 73 00 78 00 00 00 2e 00 61 00 63 00 64 00 00 00 2e 00 70 00 64 00 66 00 00 00 2e 00 70 00 66 00 78 00 00 00 } //01 00 
		$a_00_6 = {64 65 63 72 79 70 74 20 79 6f 75 72 20 66 69 6c 65 73 2c 20 69 73 20 6c 6f 63 61 74 65 64 20 6f 6e 20 61 20 73 65 63 72 65 74 20 73 65 72 76 65 72 } //01 00  decrypt your files, is located on a secret server
		$a_00_7 = {4a 41 46 46 20 44 45 43 52 59 50 54 4f 52 } //00 00  JAFF DECRYPTOR
	condition:
		any of ($a_*)
 
}