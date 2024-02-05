
rule Worm_Win32_Kasidet_A{
	meta:
		description = "Worm:Win32/Kasidet.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 6f 73 3d 25 73 26 61 76 3d 25 73 26 6e 61 74 3d 25 73 26 } //01 00 
		$a_01_1 = {3f 74 61 73 6b 65 78 65 63 3d 31 26 74 61 73 6b 5f 69 64 3d 25 73 } //01 00 
		$a_01_2 = {3f 67 65 74 63 6d 64 3d 31 26 75 69 64 3d 25 73 26 63 6e 3d 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}