
rule Trojan_Win32_Pramro_A{
	meta:
		description = "Trojan:Win32/Pramro.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 0a 00 00 "
		
	strings :
		$a_00_0 = {83 fa 74 0f 85 2f 01 00 00 8b 45 08 03 85 e0 fe ff ff 0f be 48 06 83 f9 4f 74 16 8b 55 08 03 95 e0 fe ff ff 0f be 42 06 83 f8 6f } //2
		$a_02_1 = {6a 19 ff 15 90 01 02 40 00 50 8b 85 90 01 02 ff ff 25 ff ff 00 00 99 b9 03 00 00 00 f7 f9 8b 14 95 90 01 03 00 52 90 00 } //2
		$a_02_2 = {c6 45 fc 01 eb 75 6a 50 ff 15 90 01 02 40 00 50 68 90 01 04 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 89 85 90 01 02 ff ff 83 bd 90 01 02 ff ff 00 75 06 c6 45 fc 01 eb 47 90 00 } //2
		$a_01_3 = {4d 43 49 5f 44 50 49 33 32 00 } //1 䍍彉偄㍉2
		$a_01_4 = {44 52 56 5f 56 45 52 00 } //1 剄彖䕖R
		$a_01_5 = {67 62 5f 69 64 25 64 3d 00 } //1
		$a_01_6 = {67 62 5f 64 61 74 61 00 } //1 执摟瑡a
		$a_01_7 = {70 72 61 6d 3d 25 73 26 70 72 6f 74 3d 25 64 00 } //1 牰浡┽♳牰瑯┽d
		$a_01_8 = {25 73 3a 2a 3a 45 6e 61 62 6c 65 64 3a 69 70 73 65 63 00 } //1
		$a_01_9 = {4f 4b 5f 41 64 64 65 64 00 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=4
 
}