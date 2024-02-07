
rule Trojan_Win32_Ursnif_BI_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.BI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b fe 03 eb 2b f8 81 fd 90 08 20 00 8b ea 2b 2d 90 01 04 2b f3 3d 90 01 04 8d 7c 2f 1e 8b 6c 24 10 8b 6d 00 89 3d 90 01 04 89 35 90 00 } //01 00 
		$a_02_1 = {2b cf 83 e9 4c 8b f9 89 3d 90 01 04 b9 05 00 00 00 eb 90 08 30 00 8b 74 24 10 81 c5 90 01 04 89 2e 8b 35 90 08 20 00 2b cf 83 e9 4c 89 0d 90 08 20 00 83 44 24 10 04 8b ca 2b cb 83 e9 4c 83 6c 24 14 01 90 00 } //00 00 
		$a_00_2 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}