
rule Backdoor_Win32_Afcore_gen_G{
	meta:
		description = "Backdoor:Win32/Afcore.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 07 00 00 "
		
	strings :
		$a_03_0 = {eb 1c 81 2d ?? ?? ?? ?? 33 03 00 00 6a 00 6a 00 68 00 04 00 00 ff 75 08 ff 15 ?? ?? ?? ?? 33 c0 c9 c2 10 00 } //10
		$a_03_1 = {68 00 30 10 00 ff 76 ?? 6a 00 ff 15 90 17 03 05 05 05 90 09 13 00 e9 90 09 10 00 eb 90 09 10 00 75 } //1
		$a_03_2 = {68 00 30 10 00 ff b6 ?? ?? ?? ?? 6a 00 ff 15 90 17 03 05 05 05 90 09 16 00 e9 90 09 13 00 eb 90 09 13 00 75 } //1
		$a_03_3 = {b8 00 30 10 00 50 56 6a 00 89 45 ?? ff 15 90 0a 40 00 6a 40 5f } //1
		$a_03_4 = {be 00 30 10 00 [0-20] 6a 40 56 57 33 f6 56 a3 ?? ?? ?? ?? ff 15 } //1
		$a_03_5 = {ba 00 30 10 00 [0-30] 6a 40 52 56 53 89 45 ?? ff 15 } //1
		$a_03_6 = {6a 40 89 45 ?? b8 00 30 10 00 50 56 53 89 45 98 ff 15 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=11
 
}