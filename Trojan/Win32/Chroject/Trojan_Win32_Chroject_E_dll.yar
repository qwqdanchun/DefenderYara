
rule Trojan_Win32_Chroject_E_dll{
	meta:
		description = "Trojan:Win32/Chroject.E!dll,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {43 68 61 72 67 65 72 2e 64 6c 6c 00 } //1
		$a_00_1 = {47 6f 6c 64 65 6e 41 78 65 2e 64 6c 6c 00 } //1
		$a_03_2 = {6a 5c 52 e8 ?? ?? ?? ?? 8b f8 83 c4 08 83 c7 01 } //1
		$a_01_3 = {45 8b c5 83 e0 03 8a 5c 04 10 32 1c 29 } //1
		$a_01_4 = {89 7e 08 8b 46 10 03 46 08 88 18 ff 46 10 8b 4e 10 8b 46 14 3b c8 73 13 } //1
		$a_01_5 = {8b 48 04 ff d1 8d 55 fc 52 8d 45 f4 50 6a 00 6a 00 8b 4d f0 8b 11 ff d2 8b 45 fc 50 8b 4d f0 8b 51 08 ff d2 } //2
		$a_03_6 = {ff d3 85 c0 74 ?? 81 7c 24 14 80 00 00 00 75 ?? 6a 00 6a 00 55 57 6a 00 6a 00 56 c7 05 ?? ?? ?? ?? 0b 00 00 00 ff 15 ?? ?? ?? ?? 8b d8 ff 15 ?? ?? ?? ?? 85 db 74 ?? 68 88 13 00 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2+(#a_03_6  & 1)*2) >=5
 
}