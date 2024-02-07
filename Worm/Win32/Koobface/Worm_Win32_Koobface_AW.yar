
rule Worm_Win32_Koobface_AW{
	meta:
		description = "Worm:Win32/Koobface.AW,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {81 c6 50 c3 00 00 81 fe a0 25 26 00 0f 8f 90 01 02 00 00 56 ff 15 90 01 04 e8 90 01 04 84 c0 74 de 90 00 } //01 00 
		$a_01_1 = {64 75 6d 70 20 72 65 73 70 6f 6e 63 65 20 3d 3d } //01 00  dump responce ==
		$a_01_2 = {23 42 4c 55 45 4c 41 42 45 4c } //01 00  #BLUELABEL
		$a_01_3 = {25 73 3f 61 25 73 6e 3d 25 73 67 65 6e 26 76 3d 25 73 } //01 00  %s?a%sn=%sgen&v=%s
		$a_03_4 = {25 73 3f 61 63 74 69 6f 6e 3d 90 02 0a 26 68 61 72 64 69 64 3d 25 73 26 76 3d 25 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}