
rule Worm_Win32_Kangkio_A{
	meta:
		description = "Worm:Win32/Kangkio.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {d0 c2 bd a8 ce c4 bc fe bc d0 2e 65 78 65 00 } //01 00 
		$a_01_1 = {2a 2e 2a 00 25 73 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00 
		$a_01_2 = {68 74 74 70 3a 2f 2f 25 37 37 25 37 37 25 37 37 25 32 45 25 } //01 00 
		$a_01_3 = {5c 4b 69 6c 6c 4a 70 67 2e 65 78 65 } //01 00 
		$a_01_4 = {c8 ce ce f1 b9 dc c0 ed 00 } //01 00 
		$a_01_5 = {ce c4 bc fe bc d0 d1 a1 cf ee 00 } //03 00 
		$a_03_6 = {6a 00 6a 00 68 00 08 00 00 52 ff d3 8b 44 24 10 8b 4f 04 50 6a 10 6a 00 51 ff d3 8d 4c 24 10 c7 84 24 90 01 03 00 ff ff ff ff e8 90 01 03 00 8b 96 90 01 03 00 8b 46 20 8b 3d 90 01 02 40 00 52 6a 01 68 80 00 00 00 90 00 } //02 00 
		$a_03_7 = {8b 01 83 f8 ff 74 1f 8b ac 24 90 01 02 00 00 8b 35 90 01 02 40 00 6a 00 6a 00 6a 10 55 ff d6 6a 00 6a 00 6a 02 55 ff d6 8d 4c 24 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}