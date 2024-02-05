
rule Backdoor_WinNT_Rustock_J{
	meta:
		description = "Backdoor:WinNT/Rustock.J,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 01 00 00 00 0f a2 81 e2 00 08 00 00 85 d2 74 90 01 01 b9 74 01 00 00 0f 32 89 45 90 01 01 b9 75 01 00 00 0f 32 89 45 90 01 01 b9 76 01 00 00 0f 32 89 45 90 00 } //01 00 
		$a_01_1 = {8b 41 60 56 8b 72 08 fe 49 23 83 e8 24 89 41 60 89 50 14 0f b6 00 51 52 ff 54 86 38 5e c3 } //01 00 
		$a_03_2 = {8d 88 00 10 00 00 eb 90 01 01 2b c8 eb 90 01 01 66 81 38 8d 88 0f 84 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}