
rule Worm_Win32_Vobfus_gen_P{
	meta:
		description = "Worm:Win32/Vobfus.gen!P,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 e8 90 01 04 8d 45 90 01 01 50 ff 35 90 01 04 ff 75 90 01 01 e8 90 01 04 8d 45 90 01 01 50 6a 00 e8 90 01 04 c7 45 90 01 02 00 00 00 6a 00 6a 05 6a 01 6a 00 8d 45 90 01 01 50 6a 10 68 80 08 00 00 e8 90 00 } //5
		$a_03_1 = {c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 e8 90 01 04 8d 45 90 01 01 89 85 90 01 04 c7 85 90 01 04 03 40 00 00 8d 95 90 01 04 8b 45 90 01 01 6a 08 59 2b 48 90 01 01 c1 e1 04 8b 45 90 01 01 8b 40 90 01 01 03 c8 e8 90 01 04 8d 45 90 01 01 50 ff 35 90 01 04 ff 75 90 01 01 e8 90 01 04 8d 45 90 01 01 50 6a 00 e8 90 00 } //5
		$a_03_2 = {c1 e1 04 8b 85 90 01 04 8b 40 90 01 01 03 c8 e8 90 01 04 8d 85 90 01 04 50 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 50 ff 35 90 01 04 e8 90 01 04 89 85 90 01 04 8d 85 90 01 04 50 6a 00 e8 90 00 } //2
		$a_03_3 = {33 c9 2b 48 90 01 01 c1 e1 04 8b 90 03 04 04 85 90 01 04 45 90 01 01 8b 40 90 01 01 03 c8 e8 90 01 04 8d 90 03 04 04 85 90 01 04 45 90 01 01 50 ff 90 03 04 04 35 90 01 04 75 90 01 01 ff 75 90 01 01 e8 90 01 04 89 85 90 01 04 8d 90 03 04 04 85 90 01 04 45 90 01 01 50 6a 00 e8 90 00 } //2
		$a_03_4 = {c1 e1 04 8b 90 03 04 04 85 90 01 04 45 90 01 01 8b 40 90 01 01 03 c8 e8 90 01 04 8d 90 03 04 04 85 90 01 04 45 90 01 01 50 ff 75 90 01 01 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 50 e8 90 01 04 89 85 90 01 04 8d 90 03 04 04 85 90 01 04 45 90 01 01 50 6a 00 e8 90 00 } //2
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2) >=7
 
}