
rule Trojan_Win32_Lethic_O_bit{
	meta:
		description = "Trojan:Win32/Lethic.O!bit,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 03 00 "
		
	strings :
		$a_03_0 = {8b 4d 08 89 01 68 90 01 04 8b 55 f4 52 ff 15 90 01 04 8b 4d 08 89 41 04 90 00 } //03 00 
		$a_03_1 = {8b 4d 08 89 41 38 68 90 01 04 8b 55 90 01 01 52 ff 15 90 00 } //01 00 
		$a_03_2 = {fd ff ff 33 95 90 01 01 fd ff ff 89 95 90 01 01 fd ff ff 8b 85 90 01 01 fd ff ff 33 85 90 01 01 fd ff ff 89 85 90 01 01 fd ff ff 8b 8d 90 01 01 fd ff ff 89 8d 90 01 01 fd ff ff 8b 95 90 01 01 fd ff ff 89 95 90 01 01 fd ff ff 8b 85 90 01 01 fd ff ff 05 90 01 04 8b 8d 90 01 01 fd ff ff 81 d1 90 01 04 89 85 90 01 01 fd ff ff 89 8d 90 01 01 fd ff ff 90 00 } //01 00 
		$a_01_3 = {70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 41 64 64 2d 4d 70 50 72 65 66 65 72 65 6e 63 65 20 2d 45 78 63 6c 75 73 69 6f 6e 50 61 74 68 } //01 00 
		$a_01_4 = {37 36 34 38 37 2d 33 33 37 2d 38 34 32 39 39 35 35 2d 32 32 36 31 34 } //01 00 
		$a_01_5 = {37 36 34 38 37 2d 36 34 34 2d 33 31 37 37 30 33 37 2d 32 33 35 31 30 } //01 00 
		$a_01_6 = {35 35 32 37 34 2d 36 34 30 2d 32 36 37 33 30 36 34 2d 32 33 39 35 30 } //00 00 
	condition:
		any of ($a_*)
 
}