
rule Trojan_Win32_Tarifarch_T{
	meta:
		description = "Trojan:Win32/Tarifarch.T,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 14 00 "
		
	strings :
		$a_01_0 = {70 5f 66 2e 70 68 70 3f 73 75 62 5f 69 64 3d } //01 00  p_f.php?sub_id=
		$a_01_1 = {4f 44 4d 34 4e 51 3d 3d 00 00 00 00 61 48 52 30 63 44 6f 76 4c 32 31 76 63 6d 56 6b 4c 6d 4a 70 } //01 00 
		$a_01_2 = {4e 7a 41 77 4f 51 3d 3d 00 00 00 00 77 50 44 73 35 65 33 6f 2f 77 3d 3d 00 00 00 00 52 6b 59 67 } //01 00 
		$a_01_3 = {4e 44 38 30 4f 51 3d 3d 00 00 00 00 5a 48 68 34 66 44 59 6a 49 32 46 6a 66 6d 6c 6f 49 6d 35 6c } //01 00 
		$a_01_4 = {4f 7a 77 38 4e 51 3d 3d 00 00 00 00 7a 50 7a 67 36 65 48 6b 38 77 3d 3d 00 00 00 00 53 6b 6f 73 } //00 00 
	condition:
		any of ($a_*)
 
}