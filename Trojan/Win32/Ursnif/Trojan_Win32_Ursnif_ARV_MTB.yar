
rule Trojan_Win32_Ursnif_ARV_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.ARV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b6 d0 8b f3 2b f2 83 c1 90 01 01 83 ee 90 01 01 ff 4c 24 90 01 01 89 4c 24 90 01 01 0f 85 90 0a 76 00 69 ff 90 01 04 81 c5 90 01 04 89 29 8b 15 90 01 04 2b 15 90 01 04 81 fa 90 01 04 75 90 01 01 6b ff 90 01 01 8d 7c 1f 90 01 01 eb 90 01 01 8b 15 90 01 04 8d 7c 1a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}