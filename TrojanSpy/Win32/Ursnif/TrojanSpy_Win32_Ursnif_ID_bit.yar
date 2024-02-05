
rule TrojanSpy_Win32_Ursnif_ID_bit{
	meta:
		description = "TrojanSpy:Win32/Ursnif.ID!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b c8 8b 44 24 90 01 01 83 44 24 90 01 01 04 81 c3 90 01 04 89 18 0f b7 c1 8b f0 2b f7 90 09 0a 00 8b 4c 24 90 01 01 69 c0 90 00 } //01 00 
		$a_01_1 = {63 3a 5c 43 61 70 69 74 61 6c 5c 44 65 73 65 72 74 5c 4c 65 74 5c 66 65 6c 6c 5c 43 6f 6f 6c 5c 53 6f 69 6c 5c 54 68 69 72 64 54 68 69 6e 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}