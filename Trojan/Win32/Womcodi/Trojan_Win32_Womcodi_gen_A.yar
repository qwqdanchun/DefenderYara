
rule Trojan_Win32_Womcodi_gen_A{
	meta:
		description = "Trojan:Win32/Womcodi.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0d 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {66 33 45 d0 0f bf d0 52 ff 15 90 01 04 8b d0 8d 4d c8 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 4d d4 ff 15 90 00 } //0a 00 
		$a_03_1 = {66 33 45 d0 0f bf c0 50 e8 90 01 04 8b d0 8d 4d c8 e8 90 01 04 50 e8 90 01 04 8b d0 8d 4d d4 e8 90 00 } //0a 00 
		$a_03_2 = {6b 70 ff fb 12 e7 0b 90 01 01 00 04 00 23 44 ff 2a 31 74 ff 32 04 00 48 ff 44 ff 35 4c ff 00 0c 6b 70 ff f3 ff 00 c6 1c 90 01 02 00 07 f4 01 70 70 ff 1e 90 01 02 00 0b 6b 70 ff f4 01 a9 70 70 ff 00 0a 04 72 ff 64 6c 90 00 } //03 00 
		$a_01_3 = {5d 00 6e 00 6a 00 69 00 60 00 71 00 6e 00 7a 00 6c 00 56 00 67 00 65 00 60 00 6b 00 78 00 79 00 63 00 77 00 3d 00 71 00 6d 00 73 00 } //01 00  ]nji`qnzlVge`kxycw=qms
		$a_01_4 = {72 00 60 00 6a 00 61 00 61 00 6a 00 6b 00 26 00 6d 00 66 00 67 00 } //01 00  r`jaajk&mfg
		$a_01_5 = {42 00 38 00 5f 00 77 00 64 00 6b 00 77 00 64 00 6c 00 24 00 6e 00 74 00 68 00 } //01 00  B8_wdkwdl$nth
		$a_01_6 = {42 00 38 00 5f 00 62 00 6c 00 6a 00 62 00 26 00 6c 00 72 00 6e 00 } //00 00  B8_bljb&lrn
	condition:
		any of ($a_*)
 
}