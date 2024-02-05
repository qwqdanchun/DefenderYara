
rule Trojan_Win32_PanPals_gen_dha{
	meta:
		description = "Trojan:Win32/PanPals.gen!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 05 00 "
		
	strings :
		$a_41_0 = {47 04 03 c3 8a 84 08 08 02 00 00 88 04 0e 41 3b 0f 72 ec 05 } //00 24 
		$a_6a_1 = {68 00 30 00 00 ff 36 50 ff 95 90 01 04 8b 4e 04 ff 36 81 c1 08 02 00 00 90 02 06 03 cf 51 50 e8 90 00 05 00 2c 43 6a 04 68 00 30 00 00 8b 55 90 01 01 8b 02 05 c0 0d 00 00 50 6a 00 ff 90 01 05 89 45 90 } //01 01 
		$a_4d_2 = {01 01 81 c1 a0 0b 00 00 90 00 00 00 5d 04 00 00 86 01 05 80 5c 28 00 00 87 01 05 80 00 00 01 00 08 00 12 00 ac 21 52 5a 53 74 72 65 65 74 2e 67 65 6e 21 64 68 61 00 00 01 40 05 82 70 00 04 00 78 37 00 00 0a 00 0a 00 02 00 00 05 00 14 43 0f be 14 10 33 ca 8b 85 90 01 04 03 85 90 01 04 88 08 90 00 05 00 12 43 10 ff 75 f8 ff 35 90 01 04 c3 6a 90 01 01 ff 15 90 00 00 00 5d 04 00 00 87 01 05 80 5c 28 00 00 88 01 05 80 } //00 00 
	condition:
		any of ($a_*)
 
}