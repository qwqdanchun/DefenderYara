
rule Trojan_Win32_Oficla_E{
	meta:
		description = "Trojan:Win32/Oficla.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {41 30 29 18 e8 ?? ?? ?? ?? 8d 95 ?? ?? ff ff b9 20 00 00 00 } //1
		$a_03_1 = {ff 53 04 8d 93 ?? ?? 00 00 83 ec 08 89 ?? ?? ff d0 83 e8 01 83 ec 04 83 f8 01 76 22 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Oficla_E_2{
	meta:
		description = "Trojan:Win32/Oficla.E,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 2c 13 04 18 5d 8d 85 ?? ?? ?? ?? ff d0 85 c0 75 04 } //2
		$a_03_1 = {c7 44 24 2c 8b f7 08 3e 8d 85 ?? ?? ?? ?? ff d0 8b 54 24 40 52 ff d0 } //2
		$a_03_2 = {0f b6 02 83 ?? 01 83 c2 01 33 05 ?? ?? ?? ?? 88 03 83 c3 01 3b ?? 48 77 ff ff 75 e4 } //1
		$a_01_3 = {83 c0 01 89 44 24 08 69 c2 b7 c6 05 00 0f af d1 8d 75 f3 89 44 24 04 0f b6 c3 01 d0 89 04 24 e8 } //1
		$a_01_4 = {8b 45 0c 8b 5d 08 c7 44 24 04 c9 f8 00 00 c7 04 24 00 00 00 00 89 44 24 08 e8 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}
rule Trojan_Win32_Oficla_E_3{
	meta:
		description = "Trojan:Win32/Oficla.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {67 6c 61 76 00 70 72 65 70 75 73 6b 00 70 75 73 } //2 汧癡瀀敲異歳瀀獵
		$a_01_1 = {67 6c 6c 61 76 00 67 6c 6c 61 76 00 70 70 75 73 } //2 汧慬v汧慬v灰獵
		$a_01_2 = {67 74 74 61 76 00 67 74 74 61 76 00 70 70 75 73 } //2 瑧慴v瑧慴v灰獵
		$a_01_3 = {67 69 69 61 76 00 67 69 69 61 76 00 70 72 65 62 } //2 楧慩v楧慩v牰扥
		$a_03_4 = {c7 44 24 0c 3f 00 0f 00 c7 44 24 08 00 00 00 00 c7 04 24 (00|02) 00 00 80 } //8
		$a_03_5 = {83 c2 01 30 01 83 c1 01 83 fa 10 75 ec 83 c3 10 81 fb ?? ?? ?? ?? 75 d0 } //1
		$a_01_6 = {80 7b ff 3f 74 06 c6 03 26 83 c3 01 } //1
		$a_03_7 = {83 f8 04 be 01 00 00 00 77 f6 ff 24 85 ?? ?? ?? ?? 8d 45 f3 b9 7c 00 00 00 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_03_4  & 1)*8+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*2) >=10
 
}