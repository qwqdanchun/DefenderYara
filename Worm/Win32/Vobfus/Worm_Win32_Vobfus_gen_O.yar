
rule Worm_Win32_Vobfus_gen_O{
	meta:
		description = "Worm:Win32/Vobfus.gen!O,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 08 00 00 "
		
	strings :
		$a_03_0 = {c1 e0 04 8b 4d 90 01 01 8b 49 90 01 01 03 c8 ff 15 90 01 04 8d 55 90 01 01 52 a1 90 01 04 50 8b 0d 90 01 04 51 e8 90 01 04 89 85 90 01 04 8d 55 90 01 01 52 6a 00 ff 15 90 01 04 8b 85 90 01 04 89 45 90 00 } //2
		$a_03_1 = {c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 ff 15 90 01 04 8d 4d 90 01 01 51 8b 15 90 01 04 52 a1 90 01 04 50 e8 90 01 04 89 85 90 01 04 8d 4d 90 01 01 51 6a 00 ff 15 90 01 04 8b 95 90 01 04 89 55 90 00 } //2
		$a_03_2 = {c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 ff 15 90 01 04 8d 4d 90 01 01 51 8d 55 90 01 01 52 8d 45 90 01 01 50 ff 15 90 01 04 50 8b 0d 90 01 04 51 e8 90 01 04 89 85 90 01 04 8d 55 90 01 01 52 6a 00 ff 15 90 01 04 8b 85 90 01 04 89 45 90 00 } //2
		$a_03_3 = {c1 e0 04 8b 8d 90 01 04 8b 49 90 01 01 03 c8 ff 15 90 01 04 8d 95 90 01 04 52 8b 45 90 01 01 50 8d 4d 90 01 01 51 8d 95 90 01 04 52 ff 15 90 01 04 50 e8 90 01 04 89 85 90 01 04 8d 85 90 01 04 50 6a 00 ff 15 90 01 04 8b 8d 90 01 04 89 4d 90 00 } //2
		$a_03_4 = {c1 e0 04 8b 4d 90 01 01 8b 49 90 01 01 03 c8 ff 15 90 01 04 8d 55 90 01 01 52 a1 90 01 04 50 8b 0d 90 01 04 51 e8 90 01 04 8d 55 90 01 01 52 6a 00 ff 15 90 00 } //10
		$a_03_5 = {c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 ff 15 90 01 04 8d 4d 90 01 01 51 8b 15 90 01 04 52 a1 90 01 04 50 e8 90 01 04 8d 4d 90 01 01 51 6a 00 ff 15 90 00 } //10
		$a_03_6 = {c3 00 8d 55 90 09 04 00 66 c7 45 90 00 } //1
		$a_03_7 = {b9 a4 00 00 00 ff 15 90 01 04 8b 0d 90 01 04 03 8d 90 01 02 ff ff 88 01 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*10+(#a_03_5  & 1)*10+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=22
 
}