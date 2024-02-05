
rule Worm_Win32_Cridex_G_MTB{
	meta:
		description = "Worm:Win32/Cridex.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {66 83 c6 4d 2a c1 04 4d 00 05 90 01 04 8b 44 24 90 01 01 81 c7 90 01 04 89 38 0f b7 c6 8d 84 41 90 01 04 39 05 90 01 04 77 90 01 01 8b 54 24 90 01 01 89 15 90 01 04 8d 94 00 90 01 04 66 01 15 90 01 04 8a 15 90 01 04 83 44 24 10 90 01 01 8b d8 6b db 90 01 01 66 0f b6 f2 66 2b f3 81 7c 24 10 90 01 04 66 89 35 90 01 04 0f 82 90 00 } //01 00 
		$a_02_1 = {0f b7 c5 49 0f af c8 81 3d 90 01 08 66 89 2d 90 01 04 75 90 01 01 8b 3d 90 01 04 c1 e7 03 2b 3d 90 01 04 2b 3d 90 01 04 66 89 3d 90 01 04 83 44 24 10 04 81 7c 24 10 90 01 04 0f 82 90 09 08 00 81 c3 90 01 04 89 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}