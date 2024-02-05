
rule Trojan_Win32_Emotet_CF_MTB{
	meta:
		description = "Trojan:Win32/Emotet.CF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {81 e2 ff 00 00 00 b8 01 00 00 00 c1 e0 00 8b 4d 10 0f b6 04 01 8b 4d fc 33 04 91 ba 01 00 00 00 c1 e2 00 8b 4d 14 88 04 11 8b 55 f8 83 c2 01 81 e2 ff 00 00 00 } //01 00 
		$a_02_1 = {0f b6 08 85 c9 74 90 01 01 8b 55 90 01 01 c1 ea 0d 8b 45 90 01 01 c1 e0 13 0b d0 89 55 90 01 01 8b 4d 90 01 01 0f b6 11 83 fa 61 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}