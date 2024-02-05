
rule Trojan_Win32_Shelm_B_MTB{
	meta:
		description = "Trojan:Win32/Shelm.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {38 1e 8d 76 01 0f b6 c8 0f b6 d2 0f 44 d1 fe c0 3c 40 72 90 01 01 8b 45 fc 32 db 8a 4d f9 be 90 01 04 89 55 f0 8a 78 ff 0f 90 00 } //02 00 
		$a_03_1 = {8b 4d f4 8a c1 8b 75 90 01 01 89 55 f8 8b 55 f0 c0 e8 04 c0 e2 02 24 03 0a c2 8b 55 90 01 01 88 04 17 80 3e 3d 74 90 00 } //02 00 
		$a_01_2 = {62 61 65 73 36 34 20 3d 20 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}