
rule Ransom_Win32_Locky_GJV_MTB{
	meta:
		description = "Ransom:Win32/Locky.GJV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c2 33 d2 f7 f1 b9 90 01 04 8b c7 25 00 30 00 00 83 ca 2a 2b ca 33 d2 f7 f6 8b c7 33 ca 81 c9 90 01 04 89 0d 90 01 04 e8 90 01 04 8b c8 8d 87 90 01 04 0f af c8 89 0d 90 01 04 ff 45 f4 8b 45 e4 03 45 f4 03 45 0c 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}