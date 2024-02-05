
rule PWS_Win32_Fareit_gen_K{
	meta:
		description = "PWS:Win32/Fareit.gen!K,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b d0 d1 e2 b9 09 00 00 00 d1 ea 73 90 01 01 81 f2 31 92 a9 fc 81 f2 11 11 11 11 90 00 } //01 00 
		$a_03_1 = {eb 2d 8b 17 8b 45 08 25 ff 7f ff ff 39 42 04 75 1b 6a 00 8d 42 08 50 68 90 01 04 ff 32 e8 90 00 } //01 00 
		$a_03_2 = {50 6a 00 6a 02 ff 75 f8 6a 00 ff 73 04 ff 15 90 01 04 0b c0 74 90 01 01 ff 75 f8 e8 90 01 04 eb 90 01 01 ff 75 f8 e8 90 01 04 bf 90 01 04 c7 45 fc 00 00 00 00 8d 45 fc 50 6a 00 6a 02 57 6a 00 ff 73 04 ff 15 90 01 04 0b c0 0f 84 90 00 } //01 00 
		$a_01_3 = {69 6e 65 74 63 6f 6d 6d 20 73 65 72 76 65 72 20 70 61 73 73 77 6f 72 64 73 00 6f 75 74 6c 6f 6f 6b 20 61 63 63 6f 75 6e 74 20 6d 61 6e 61 67 65 72 20 70 61 73 73 77 6f 72 64 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}