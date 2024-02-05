
rule Trojan_Win32_Raccrypt_GF_MTB{
	meta:
		description = "Trojan:Win32/Raccrypt.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {88 04 31 81 3d 90 01 04 03 02 00 00 90 00 } //01 00 
		$a_02_1 = {88 14 30 81 3d 90 01 04 03 02 00 00 90 00 } //04 00 
		$a_02_2 = {8b 4c 24 10 30 04 31 81 bc 24 90 01 04 91 05 00 00 90 18 46 3b b4 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Raccrypt_GF_MTB_2{
	meta:
		description = "Trojan:Win32/Raccrypt.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {19 36 6b ff 90 0a 32 00 c1 90 01 01 04 03 90 02 28 c1 90 01 01 05 03 90 02 0f 90 02 14 c7 05 90 02 14 90 17 02 01 01 31 33 90 00 } //01 00 
		$a_02_1 = {19 36 6b ff 90 0a 32 00 c1 90 01 01 05 03 90 02 28 c1 90 01 01 04 03 90 02 0f 90 02 14 c7 05 90 02 14 90 17 02 01 01 31 33 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Raccrypt_GF_MTB_3{
	meta:
		description = "Trojan:Win32/Raccrypt.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {be 14 4a 0a c7 84 24 90 01 04 32 f5 41 2a c7 84 24 90 01 04 52 89 eb 0e c7 84 24 90 01 04 fc 7d 9a 60 c7 84 24 90 01 04 e5 9a 40 22 90 00 } //01 00 
		$a_02_1 = {ce 07 14 68 c7 44 24 90 01 01 95 70 b0 07 c7 44 24 90 01 01 db 42 40 19 c7 44 24 90 01 01 2f 73 f1 3c c7 44 24 90 01 01 16 a9 ca 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Raccrypt_GF_MTB_4{
	meta:
		description = "Trojan:Win32/Raccrypt.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {b8 3b 2d 0b 00 01 45 90 01 01 8b 45 90 01 01 8a 04 08 88 04 39 41 3b 0d 90 00 } //01 00 
		$a_02_1 = {8b c6 d3 e8 03 45 90 01 01 33 45 90 01 01 2b f8 83 fa 90 01 01 75 90 01 01 ff 15 90 01 04 25 bb 52 c0 5d 90 00 } //0a 00 
		$a_02_2 = {33 75 0c 8b 45 08 89 30 5e 90 02 01 c2 08 00 33 44 24 04 c2 04 00 81 00 ae 36 ef c6 c3 01 08 c3 90 00 } //01 00 
		$a_02_3 = {c1 e0 04 89 01 c3 55 8b ec 83 ec 0c 83 3d 90 01 04 03 56 8b f0 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}