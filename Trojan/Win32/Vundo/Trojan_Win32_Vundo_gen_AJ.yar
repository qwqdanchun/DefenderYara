
rule Trojan_Win32_Vundo_gen_AJ{
	meta:
		description = "Trojan:Win32/Vundo.gen!AJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 81 3e 4d 5a 75 22 8b 46 3c 03 c6 81 38 50 45 00 00 75 15 66 81 48 16 00 20 } //1
		$a_01_1 = {66 81 3e 4d 5a 75 23 8b 46 3c 03 c6 81 38 50 45 00 00 75 16 ff 75 08 66 81 48 16 00 20 } //1
		$a_01_2 = {b8 4d 5a 00 00 66 39 06 75 26 8b 46 3c 03 c6 81 38 50 45 00 00 75 19 ff 75 08 b9 00 20 00 00 66 09 48 16 } //1
		$a_01_3 = {32 04 0e 32 01 32 c3 4b 88 01 49 85 db 7f e2 8b 44 24 10 5f 5e 80 30 } //3
		$a_03_4 = {66 81 45 e6 fd ff 8d 45 f4 50 8d 45 e4 50 ff 15 90 01 04 8d 45 f4 50 50 50 ff 75 08 ff 15 90 00 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_03_4  & 1)*3) >=4
 
}