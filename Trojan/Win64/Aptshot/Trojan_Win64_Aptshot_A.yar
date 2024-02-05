
rule Trojan_Win64_Aptshot_A{
	meta:
		description = "Trojan:Win64/Aptshot.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {4c 63 c9 c7 04 24 90 01 04 c7 44 24 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 05 c7 44 24 90 02 e0 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 01 05 c7 45 90 00 } //01 00 
		$a_03_1 = {b0 f8 48 8d 4c 24 90 01 01 41 b8 e7 00 00 00 0f 1f 84 90 01 05 30 41 ff 04 3a 48 83 c1 90 01 01 34 a6 30 41 fe 04 3a 34 a6 49 ff c8 75 e9 4a 8d 0c 4c 48 2b d1 66 90 90 0f b7 01 48 83 c1 90 01 01 66 89 44 0a fe 66 85 c0 75 ef 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}