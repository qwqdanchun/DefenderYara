
rule Backdoor_Win32_Haxdoor_gen_A{
	meta:
		description = "Backdoor:Win32/Haxdoor.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 15 68 ?? ?? 01 00 6a 00 ff 75 08 e8 ?? ?? 00 00 0b c0 } //2
		$a_03_1 = {b9 2a 00 00 00 f3 a4 b8 ?? ?? 01 00 50 68 ?? ?? 01 00 e8 ?? ?? 00 00 8d 0d ?? ?? 01 00 33 d2 90 09 1a 00 64 89 25 00 00 00 00 8d 1d ?? ?? 01 00 a1 ?? ?? 01 00 8b 33 8d b8 ?? ?? 01 00 } //1
		$a_03_2 = {b9 1a 00 00 00 f3 a4 68 ?? ?? 01 00 68 ?? ?? 01 00 e8 90 09 13 00 8d 1d ?? ?? 01 00 a1 ?? ?? 01 00 8b 33 8d b8 ?? ?? 01 00 } //1
		$a_03_3 = {ba 36 36 36 00 ff d0 61 c9 90 09 17 00 8d 86 ?? ?? 40 00 50 ff 96 ?? ?? 40 00 0b c0 74 0d 03 86 ?? ?? 40 00 } //3
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*3) >=3
 
}