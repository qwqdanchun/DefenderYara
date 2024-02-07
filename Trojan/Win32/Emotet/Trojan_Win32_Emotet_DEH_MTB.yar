
rule Trojan_Win32_Emotet_DEH_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DEH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 c0 81 e1 ff 00 00 00 8a 44 14 90 01 01 8b ac 24 90 01 04 03 c1 b9 90 01 04 99 f7 f9 8b 44 24 90 01 01 c7 84 24 90 01 08 8a 0c 28 8a 54 14 90 01 01 32 ca 88 0c 28 90 00 } //01 00 
		$a_02_1 = {03 c1 99 b9 90 01 04 f7 f9 8b 44 24 90 01 01 8b 8c 24 90 01 04 8a 54 14 90 01 01 30 14 08 40 89 44 24 90 01 01 8b 84 24 90 01 04 85 c0 0f 85 90 00 } //01 00 
		$a_02_2 = {03 c1 99 b9 a1 02 00 00 f7 f9 8b 44 24 90 01 01 8b 4c 24 90 01 01 83 c0 01 89 44 24 90 01 01 8a 54 14 90 01 01 30 54 01 ff 90 00 } //01 00 
		$a_81_3 = {71 78 5a 6d 30 67 37 44 5a 45 75 62 69 38 64 4e 71 74 6c 59 38 78 63 57 4c 64 } //00 00  qxZm0g7DZEubi8dNqtlY8xcWLd
	condition:
		any of ($a_*)
 
}