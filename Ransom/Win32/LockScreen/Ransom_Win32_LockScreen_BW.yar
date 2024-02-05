
rule Ransom_Win32_LockScreen_BW{
	meta:
		description = "Ransom:Win32/LockScreen.BW,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {76 0c 6a 00 6a 01 6a 12 50 e8 90 01 04 68 90 01 04 6a 00 e8 90 01 04 85 c0 76 0c 6a 00 6a 01 6a 12 50 e8 90 00 } //01 00 
		$a_01_1 = {f6 45 08 02 74 0b 66 83 39 73 75 05 66 c7 01 00 00 } //01 00 
		$a_01_2 = {5c 53 61 66 65 42 6f 6f 74 5c 4d 00 ff ff ff ff 31 00 } //01 00 
		$a_01_3 = {c4 e8 f1 ef e5 f2 f7 e5 f0 20 e7 e0 e4 e0 f7 20 57 69 6e 64 6f 77 73 00 } //01 00 
		$a_01_4 = {cc ee e9 20 ea ee ec ef fc fe f2 e5 f0 00 } //01 00 
		$a_03_5 = {5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e 00 90 01 08 43 3a 5c 90 00 } //01 00 
		$a_03_6 = {6a 13 8b 43 4c 50 8b 43 48 50 8b 43 44 50 8b 43 40 50 6a ff 8b c3 e8 90 01 04 50 e8 90 01 04 8b 07 8b 70 44 8b c6 8b 17 03 42 4c 83 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}