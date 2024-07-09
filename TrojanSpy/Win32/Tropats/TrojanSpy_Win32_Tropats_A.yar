
rule TrojanSpy_Win32_Tropats_A{
	meta:
		description = "TrojanSpy:Win32/Tropats.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {74 0d 88 1d ?? ?? ?? ?? 68 ?? ?? ?? ?? eb 05 68 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? 83 c4 18 33 ff 53 68 80 00 00 00 6a 04 53 6a 02 68 00 00 00 40 68 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 8b f0 83 fe ff 75 13 68 2c 01 00 00 ff 15 ?? ?? ?? ?? 47 83 ff 14 7c cd eb 26 6a 02 53 53 56 } //1
		$a_02_1 = {66 ab aa c7 85 ?? ?? 00 00 5b 48 5d 00 33 c0 8d bd ?? ?? 00 00 66 ab aa be ?? ?? ?? ?? 8d bd ?? ?? 00 00 a5 66 a5 a4 be ?? ?? ?? ?? 8d bd ?? ?? 00 00 a5 66 a5 33 c0 8d bd ?? ?? 00 00 aa be ?? ?? ?? ?? 8d bd ?? ?? 00 00 a5 66 a5 } //1
		$a_00_2 = {80 bd 83 00 00 00 00 c6 85 82 00 00 00 01 75 99 8b 45 7c 83 f8 08 0f 84 f5 02 00 00 83 f8 09 0f 84 ec 02 00 00 83 f8 11 0f 84 e3 02 00 00 83 f8 1b 0f 84 da 02 00 00 83 f8 70 7c 09 83 f8 7b 0f 8e cc 02 00 00 83 f8 2c 0f 84 c3 02 00 00 83 f8 2d 0f 84 ba 02 00 00 83 f8 2e 0f 84 b1 02 00 00 83 f8 21 7c 09 83 f8 24 0f 8e a3 02 00 00 83 f8 5b 0f 84 9a 02 00 00 83 f8 5c 0f 84 91 02 00 00 3b c3 0f 84 89 02 00 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=2
 
}