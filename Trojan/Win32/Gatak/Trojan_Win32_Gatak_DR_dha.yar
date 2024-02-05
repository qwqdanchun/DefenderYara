
rule Trojan_Win32_Gatak_DR_dha{
	meta:
		description = "Trojan:Win32/Gatak.DR!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 04 00 "
		
	strings :
		$a_01_0 = {c6 45 ec 6e c6 45 ed 74 c6 45 ee 64 c6 45 ef 6c c6 45 f0 6c c6 45 f1 2e c6 45 f2 64 c6 45 f3 6c c6 45 f4 6c } //04 00 
		$a_01_1 = {33 f6 8a 11 8a da 80 eb 41 80 fb 19 77 03 80 c2 20 38 54 35 ec 75 0f } //01 00 
		$a_01_2 = {6a 40 83 c6 04 8b 04 3e 68 00 30 00 00 89 45 f8 8d 45 f8 50 6a 00 8d 45 fc 50 6a ff 83 c6 04 89 5d fc } //04 00 
		$a_01_3 = {76 65 76 65 72 6b 61 2e 6a 75 6e 79 6b 73 2e 63 7a 2f 72 65 70 6f 72 74 } //01 00 
		$a_01_4 = {75 70 6c 6f 61 64 73 2f 65 63 38 37 32 34 33 31 32 38 38 36 63 36 38 62 32 63 32 65 35 63 34 36 64 30 61 33 36 63 34 37 2e 70 6e 67 } //01 00 
		$a_01_5 = {69 6d 61 67 65 73 75 70 2e 6e 65 74 2f 3f 64 69 3d 31 32 31 34 30 34 33 32 39 37 37 36 31 31 } //01 00 
		$a_01_6 = {33 63 62 35 63 38 66 62 66 30 31 36 66 36 66 63 37 62 36 39 61 31 37 61 63 64 33 62 64 61 31 66 2e 70 6e 67 } //01 00 
		$a_01_7 = {67 65 73 75 70 2e 6e 65 74 2f 3f 64 69 3d 32 31 34 30 34 36 35 31 39 36 37 39 } //00 00 
	condition:
		any of ($a_*)
 
}