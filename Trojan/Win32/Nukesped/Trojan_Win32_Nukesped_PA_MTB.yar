
rule Trojan_Win32_Nukesped_PA_MTB{
	meta:
		description = "Trojan:Win32/Nukesped.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {8a 14 3e 32 d0 88 14 3e 46 3b f3 7c } //02 00 
		$a_02_1 = {56 8b f1 e8 90 01 04 8b ce e8 90 01 04 8b ce e8 90 01 04 8b ce e8 90 01 04 8b 4e 90 01 01 8b 56 90 01 01 8b 46 90 01 01 33 ca 33 c8 5e 8b c1 8b d1 c1 e8 18 c1 ea 10 32 c2 8b d1 c1 ea 08 32 c2 32 c1 c3 90 00 } //01 00 
		$a_02_2 = {8a 11 32 d0 8b 45 90 01 01 03 45 90 01 01 88 10 eb 90 00 } //02 00 
		$a_02_3 = {55 8b ec 83 ec 90 01 01 89 4d 90 01 01 8b 4d 90 01 01 e8 90 01 04 8b 4d 90 01 01 e8 90 01 04 8b 4d 90 01 01 e8 90 01 04 8b 4d 90 01 01 e8 90 01 04 8b 45 90 01 01 8b 4d 90 01 01 8b 50 90 01 01 33 51 90 01 01 8b 45 90 01 01 33 50 90 01 01 89 55 90 01 01 8b 4d 90 01 01 81 e1 ff 00 00 00 8b 55 90 01 01 c1 ea 08 81 e2 ff 00 00 00 33 ca 8b 45 90 01 01 c1 e8 10 25 ff 00 00 00 33 c8 8b 55 90 01 01 c1 ea 18 81 e2 ff 00 00 00 33 ca 88 4d 90 01 01 8a 45 90 01 01 8b e5 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}