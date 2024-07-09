
rule Worm_Win32_Siver_gen_A{
	meta:
		description = "Worm:Win32/Siver.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {83 39 00 75 1c 8b 55 ?? 3b 55 ?? 75 09 c7 45 ?? 06 00 00 80 eb 09 } //1
		$a_03_1 = {8b 04 24 c6 00 eb c6 40 01 ?? c2 04 00 } //1
		$a_01_2 = {74 a6 81 7d fc 27 03 00 00 75 47 eb 9b 3d 02 01 00 00 } //2
		$a_01_3 = {8b 44 24 10 8d 0c 06 8b c6 99 f7 fb 8a 44 3a 04 30 01 46 3b 74 24 14 7c e7 } //1
		$a_03_4 = {33 f6 56 6a 01 6a 02 ff 15 ?? ?? ?? ?? 6a 35 89 83 90 09 06 00 83 c7 08 4e 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=2
 
}