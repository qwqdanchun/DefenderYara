
rule Trojan_Win32_C2Lop_gen_A{
	meta:
		description = "Trojan:Win32/C2Lop.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 07 00 06 00 00 "
		
	strings :
		$a_03_0 = {8d a4 24 00 00 00 00 0f b6 14 37 52 e8 90 01 04 8b d8 0f b6 44 37 01 50 c0 e3 04 e8 90 01 04 02 d8 8b c6 d1 e8 03 c5 99 f7 3d 90 01 04 8b 0d 90 01 04 8b 44 24 20 90 02 10 89 44 24 18 32 1c 0a 3b 74 24 14 88 58 ff 7c 90 00 } //10
		$a_03_1 = {0f b6 14 2e 52 e8 90 01 04 8b d8 0f b6 44 2e 01 50 c0 e3 04 e8 90 01 04 02 d8 8b c6 d1 e8 03 44 24 18 8b 0d 90 01 04 99 f7 3d 90 01 04 83 c6 02 83 c4 08 47 32 1c 0a 3b 74 24 14 88 5f ff 7c 90 00 } //10
		$a_00_2 = {8a 44 24 04 8a c8 80 e9 30 80 f9 09 77 07 0f b6 c0 83 e8 30 c3 8a d0 80 ea 41 80 fa 05 77 07 0f b6 c0 83 e8 37 c3 8a c8 80 e9 61 80 f9 05 77 07 0f b6 c0 83 e8 57 c3 } //4
		$a_00_3 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 25 64 00 } //1 屜尮桐獹捩污牄癩╥d
		$a_00_4 = {5c 5c 2e 5c 53 63 73 69 25 64 3a 00 } //1 屜尮捓楳搥:
		$a_00_5 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_00_2  & 1)*4+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=7
 
}