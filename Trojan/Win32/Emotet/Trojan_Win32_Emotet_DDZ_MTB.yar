
rule Trojan_Win32_Emotet_DDZ_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DDZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {81 e3 ff 00 00 00 03 c3 25 90 01 04 90 13 8a 44 04 90 01 01 8a 1e 32 d8 88 1e 46 4f 75 90 00 } //01 00 
		$a_02_1 = {03 ca 83 c4 90 01 01 81 e1 90 01 04 90 13 8a 55 00 8a 44 0c 90 01 01 32 d0 8b 44 24 90 01 01 88 55 00 45 48 89 44 24 90 01 01 0f 85 90 00 } //01 00 
		$a_02_2 = {03 d8 81 e3 90 01 04 89 ac 24 90 01 04 90 13 0f b6 44 1c 90 01 01 30 07 83 c7 01 85 ed 75 90 00 } //01 00 
		$a_81_3 = {35 61 42 68 50 6e 6c 41 6e 7a 50 66 45 65 33 4c 66 73 56 71 67 49 38 32 54 65 } //00 00  5aBhPnlAnzPfEe3LfsVqgI82Te
	condition:
		any of ($a_*)
 
}