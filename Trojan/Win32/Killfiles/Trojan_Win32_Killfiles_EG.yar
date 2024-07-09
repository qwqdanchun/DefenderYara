
rule Trojan_Win32_Killfiles_EG{
	meta:
		description = "Trojan:Win32/Killfiles.EG,SIGNATURE_TYPE_PEHSTR_EXT,49 00 42 00 14 00 00 "
		
	strings :
		$a_00_0 = {74 69 74 6c 65 } //20 title
		$a_00_1 = {4c 61 62 65 6c 20 63 3a 20 4c 69 6e } //20 Label c: Lin
		$a_02_2 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 64 3a } //1
		$a_02_3 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 45 3a } //1
		$a_02_4 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 46 3a } //1
		$a_02_5 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 47 3a } //1
		$a_02_6 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 78 6c 73 } //1
		$a_02_7 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 72 61 72 } //1
		$a_02_8 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 7a 69 70 } //1
		$a_02_9 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 70 70 74 } //1
		$a_02_10 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 6d 70 33 } //1
		$a_02_11 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 61 76 69 } //1
		$a_02_12 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 69 73 6f } //1
		$a_02_13 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 65 78 65 } //1
		$a_02_14 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 73 79 73 } //1
		$a_02_15 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 69 6e 69 } //1
		$a_02_16 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 47 48 4f } //1
		$a_02_17 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 62 61 74 } //1
		$a_02_18 = {64 65 6c 20 [0-08] 2f 73 [0-08] 20 63 3a 2a 2e 74 78 74 } //1
		$a_02_19 = {55 89 e5 83 ec 08 83 e4 f0 b8 00 00 00 00 83 c0 0f 83 c0 0f c1 e8 04 c1 e0 04 89 45 fc 8b 45 fc e8 ?? ?? 00 00 e8 ?? ?? 00 00 c7 04 24 ?? ?? 40 00 e8 ?? ?? 00 00 c7 04 24 ?? ?? 40 00 e8 ?? ?? 00 00 c7 04 24 ?? ?? 40 00 e8 ?? ?? 00 00 c7 04 24 ?? ?? 40 00 } //20
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*20+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1+(#a_02_10  & 1)*1+(#a_02_11  & 1)*1+(#a_02_12  & 1)*1+(#a_02_13  & 1)*1+(#a_02_14  & 1)*1+(#a_02_15  & 1)*1+(#a_02_16  & 1)*1+(#a_02_17  & 1)*1+(#a_02_18  & 1)*1+(#a_02_19  & 1)*20) >=66
 
}