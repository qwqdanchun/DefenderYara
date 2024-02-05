
rule Backdoor_Win32_Poison_CE{
	meta:
		description = "Backdoor:Win32/Poison.CE,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 6d 1b 00 00 77 90 01 01 8a 98 90 01 04 32 da 80 eb 05 88 98 90 01 03 00 8d bc 06 90 01 03 00 81 ff 90 01 03 00 77 90 01 01 8a 98 90 01 03 00 32 d9 80 eb 90 01 01 88 98 90 01 03 00 83 c0 02 3d 90 01 03 00 90 00 } //01 00 
		$a_03_1 = {43 81 e3 ff 00 90 01 02 79 90 01 01 4b 81 cb 90 01 04 43 8b 44 24 90 01 01 33 c9 8a 0c 03 8d 3c 03 03 e9 81 e5 90 01 04 79 90 01 01 4d 81 cd 90 01 04 45 03 c5 50 57 89 44 24 90 01 01 e8 90 01 03 00 8b 4c 24 90 01 01 33 d2 8a 17 33 c0 8a 01 83 c4 90 01 01 03 d0 81 e2 ff 90 01 03 79 90 01 01 4a 81 ca 00 90 01 03 42 8b 44 24 90 01 01 8a 0c 02 8b 44 24 90 01 01 8a 14 06 32 d1 88 14 06 8b 44 24 90 01 01 46 3b f0 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}