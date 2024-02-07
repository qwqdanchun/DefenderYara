
rule Trojan_Win32_Seedna_A{
	meta:
		description = "Trojan:Win32/Seedna.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {3f 25 73 3d 25 73 26 25 73 3d 25 6c 64 26 25 73 3d 25 64 26 25 73 3d 25 90 02 02 26 25 73 3d 25 73 26 56 65 72 3d 53 25 73 90 00 } //02 00 
		$a_01_1 = {0f b6 10 0f b6 48 01 8b f2 83 e6 0f 8b d9 c1 e6 02 c1 e9 06 0b ce } //02 00 
		$a_01_2 = {8d 04 cd ff ff ff ff 99 6a 18 5b f7 fb 8d 04 85 04 00 00 00 39 45 14 0f 8c 8e 02 00 00 } //00 00 
		$a_00_3 = {78 a5 00 00 } //08 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Seedna_A_2{
	meta:
		description = "Trojan:Win32/Seedna.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {7b 00 45 00 30 00 37 00 44 00 42 00 30 00 32 00 43 00 2d 00 33 00 38 00 37 00 45 00 2d 00 34 00 33 00 62 00 32 00 2d 00 41 00 36 00 46 00 32 00 2d 00 43 00 35 00 39 00 42 00 34 00 39 00 33 00 34 00 42 00 37 00 44 00 36 00 7d 00 } //02 00  {E07DB02C-387E-43b2-A6F2-C59B4934B7D6}
		$a_01_1 = {53 65 6e 64 44 61 74 61 54 6f 44 72 69 76 65 72 } //02 00  SendDataToDriver
		$a_01_2 = {2e 64 6c 6c 00 43 6f 6e 66 44 65 6c 65 74 65 00 43 6f 6e 66 52 65 61 64 00 43 6f 6e 66 57 72 69 74 65 } //02 00  搮汬䌀湯䑦汥瑥e潃普敒摡䌀湯坦楲整
		$a_01_3 = {66 39 1a 74 14 8b ca 8a 09 88 8c 05 } //00 00 
		$a_00_4 = {87 10 00 00 } //6f d6 
	condition:
		any of ($a_*)
 
}