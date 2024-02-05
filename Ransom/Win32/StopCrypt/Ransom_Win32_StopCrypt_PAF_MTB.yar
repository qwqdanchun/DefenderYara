
rule Ransom_Win32_StopCrypt_PAF_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {29 45 e4 89 75 ec 8b 45 fc 01 45 ec 8b 45 e4 01 45 ec 8b 45 ec 89 45 f0 8b 45 e4 8b 4d e8 d3 e8 89 45 f8 8b 45 cc 01 45 f8 8b 7d e4 c1 e7 90 01 01 03 7d d8 33 7d f0 90 00 } //01 00 
		$a_03_1 = {33 ca 31 4d 0c c7 05 90 01 08 8b 45 0c 01 05 90 01 04 2b 75 0c c7 05 90 01 08 8b ce c1 e1 90 01 01 03 4d ec 8b c6 c1 e8 90 01 01 03 45 e4 8d 14 33 33 ca 33 c8 2b f9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_StopCrypt_PAF_MTB_2{
	meta:
		description = "Ransom:Win32/StopCrypt.PAF!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {81 00 47 86 c8 61 c3 55 } //01 00 
		$a_01_1 = {c2 0c 00 81 00 03 35 ef c6 c3 } //00 00 
	condition:
		any of ($a_*)
 
}