
rule Worm_Win32_Moldyow_A{
	meta:
		description = "Worm:Win32/Moldyow.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 04 00 "
		
	strings :
		$a_02_0 = {53 50 49 36 34 2e 64 6c 6c 90 01 01 55 6e 48 6f 90 00 } //01 00 
		$a_02_1 = {5c 69 6d 65 5c 90 02 03 2e 64 6c 6c 90 00 } //01 00 
		$a_00_2 = {77 73 32 5f 34 32 2e 64 6c 6c } //02 00  ws2_42.dll
		$a_00_3 = {8a 94 07 94 01 00 00 69 c9 06 03 00 00 03 c8 40 } //04 00 
		$a_00_4 = {de de 99 f7 7d 10 8b 45 0c 0f be 04 02 33 41 04 99 f7 fb } //00 00 
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_Moldyow_A_2{
	meta:
		description = "Worm:Win32/Moldyow.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 08 00 07 00 00 04 00 "
		
	strings :
		$a_03_0 = {80 7c 01 07 3b 75 0e 80 7c 01 09 74 75 07 80 7c 01 0b 3b 74 07 41 3b ca 72 d2 eb 5c 03 c1 c6 40 01 90 90 c6 00 90 90 90 00 } //04 00 
		$a_01_1 = {80 39 68 75 2a 80 79 05 ff 75 24 80 79 06 15 75 1e 80 79 0b e9 75 18 39 41 07 75 13 8b 46 34 8d 44 10 10 } //04 00 
		$a_03_2 = {83 f9 02 aa 75 0b 8d 45 f8 50 68 90 01 04 eb 35 83 f9 03 75 0b 8d 45 f8 50 68 90 01 04 eb 25 83 f9 05 75 0b 8d 45 f8 50 68 90 01 04 eb 15 90 00 } //01 00 
		$a_01_3 = {73 68 65 6c 6c 5c 4f 70 65 6e 5c 43 6f 6d 6d 61 6e 64 3d 2e 5c 25 73 20 2d 6f } //01 00  shell\Open\Command=.\%s -o
		$a_01_4 = {25 34 64 2d 25 30 32 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 } //01 00  %4d-%02d-%02d %02d:%02d:%02d
		$a_01_5 = {76 65 72 73 69 6f 6e 20 25 64 2e 25 64 20 25 73 20 28 42 75 69 6c 64 20 25 64 29 } //01 00  version %d.%d %s (Build %d)
		$a_01_6 = {43 44 52 4f 4d 28 25 73 29 } //00 00  CDROM(%s)
	condition:
		any of ($a_*)
 
}