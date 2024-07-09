
rule Trojan_Win32_Horkremoz_A{
	meta:
		description = "Trojan:Win32/Horkremoz.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_03_0 = {0f b6 05 00 ?? 00 65 85 c0 0f 84 ?? 00 00 00 [0-10] 8b 4d } //4
		$a_03_1 = {68 84 00 00 00 68 ?? ?? 00 65 e8 ?? ?? 00 00 83 c4 08 89 85 ?? fe ff ff } //2
		$a_03_2 = {f8 6a 00 8b ?? 08 ?? 68 ?? ?? 00 65 6a 04 ff 15 ?? ?? 00 65 a3 00 50 00 65 8b } //2
		$a_01_3 = {8b 45 10 50 8b 4d 0c 51 8b 55 08 52 a1 00 50 00 65 50 ff 15 } //2
		$a_03_4 = {83 7d f4 03 0f 87 ?? ?? 00 00 8b 4d f4 ff 24 8d ?? ?? ?? ?? 8b 55 } //1
		$a_03_5 = {fe ff ff 6a 1d 68 ?? ?? 00 65 e8 ?? ?? 00 00 83 c4 08 89 85 ?? fe ff ff } //1
		$a_03_6 = {83 ea 01 89 55 e4 8b 45 e4 35 ?? ?? ?? ?? 03 45 f4 89 45 f4 8b 4d f8 83 c1 01 89 4d f8 c7 45 f4 ?? ?? ?? ?? e9 } //2
		$a_03_7 = {8a 02 88 01 8b [0-10] 89 [0-08] 8b 55 ?? 0f be 02 8b 4d ?? 0f be 11 33 d0 8b 45 ?? 88 10 } //2
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2) >=7
 
}