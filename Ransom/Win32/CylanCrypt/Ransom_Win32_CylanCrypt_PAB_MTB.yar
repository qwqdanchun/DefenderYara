
rule Ransom_Win32_CylanCrypt_PAB_MTB{
	meta:
		description = "Ransom:Win32/CylanCrypt.PAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b fa 8b ca c1 c7 0f c1 c1 0d 33 f9 c1 ea 0a 33 fa 8b ce 8b d6 c1 c9 07 c1 c2 0e 33 d1 c1 ee 03 33 d6 03 fa } //01 00 
		$a_03_1 = {0f b6 06 8d 76 01 8b ca c1 e2 08 c1 e9 18 33 c8 33 14 8d 90 01 04 83 eb 01 75 90 00 } //01 00 
		$a_03_2 = {0f b6 0e 8d 76 01 8b d0 c1 e0 08 c1 ea 18 33 d1 33 04 95 90 01 04 83 eb 01 75 90 00 } //01 00 
		$a_03_3 = {c1 c8 02 33 d0 8b 45 90 01 01 8b c8 23 45 90 01 01 0b 4d 90 01 01 23 4d 90 01 01 0b c8 8b 45 90 01 01 03 c6 03 ca 03 ce 89 45 90 01 01 8b f0 89 4d 90 01 01 c1 c0 07 90 00 } //00 00 
		$a_00_4 = {5d 04 00 00 2e 8d 05 80 5c 35 00 } //00 2f 
	condition:
		any of ($a_*)
 
}