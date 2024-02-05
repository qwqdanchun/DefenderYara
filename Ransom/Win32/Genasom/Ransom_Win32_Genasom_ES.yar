
rule Ransom_Win32_Genasom_ES{
	meta:
		description = "Ransom:Win32/Genasom.ES,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 ff ff 00 00 57 ff 15 90 01 04 68 54 76 d8 00 57 ff 15 90 00 } //01 00 
		$a_03_1 = {99 2b c2 8b f0 b8 4d 02 00 00 2b 05 90 01 04 d1 fe 99 2b c2 8b f8 d1 ff 90 00 } //01 00 
		$a_03_2 = {68 fa 00 00 00 6a 00 ff d5 50 ff 15 90 01 04 8b f8 85 ff 0f 84 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}