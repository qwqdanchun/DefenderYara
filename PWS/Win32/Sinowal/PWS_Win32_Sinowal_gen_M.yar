
rule PWS_Win32_Sinowal_gen_M{
	meta:
		description = "PWS:Win32/Sinowal.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b e0 81 e5 00 f0 ff ff 89 6c 24 fc 89 54 24 f8 89 4c 24 f4 61 90 02 02 68 00 80 00 00 6a 00 ff 74 24 e4 ff 74 24 e4 8b 44 24 e4 ff e0 90 00 } //03 00 
		$a_01_1 = {9c 50 66 a1 90 01 02 40 00 66 a9 90 01 02 58 } //02 00 
		$a_01_2 = {8b 45 c4 83 c0 01 89 45 c4 9c } //02 00 
		$a_01_3 = {8b 45 f4 83 c0 01 89 45 f4 9c } //02 00 
		$a_01_4 = {3d 0b 01 00 00 9c } //01 00 
		$a_01_5 = {81 45 08 88 6a 3f 24 } //01 00 
		$a_01_6 = {81 3c 11 50 45 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}