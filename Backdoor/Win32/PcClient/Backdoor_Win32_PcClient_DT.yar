
rule Backdoor_Win32_PcClient_DT{
	meta:
		description = "Backdoor:Win32/PcClient.DT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 09 00 00 "
		
	strings :
		$a_03_0 = {59 c6 44 24 ?? 41 c6 44 24 ?? 4e c6 44 24 ?? 47 8b 54 24 ?? 8d 8e ?? ?? 00 00 c6 86 ?? ?? 00 00 00 89 86 ?? ?? 00 00 c6 44 24 ?? 5a c6 44 24 ?? 53 } //2
		$a_03_1 = {47 c6 44 24 ?? 68 c6 44 24 ?? 30 c6 44 24 ?? 73 8b 54 24 ?? 8d 8e ?? ?? 00 00 89 86 ?? ?? 00 00 b0 74 } //2
		$a_03_2 = {68 58 02 00 00 50 51 ff 15 ?? ?? 01 10 80 bc 24 ?? ?? 00 00 05 0f 85 ?? ?? 00 00 8a 84 24 ?? ?? 00 00 84 c0 74 0a 3a c3 0f 85 ?? ?? 00 00 eb 08 } //2
		$a_01_3 = {75 70 66 69 6c 65 6f 6b 00 } //1
		$a_01_4 = {75 70 66 69 6c 65 65 72 00 } //1
		$a_01_5 = {74 72 61 66 69 6c 65 00 } //1 牴晡汩e
		$a_01_6 = {53 76 63 48 6f 73 74 2e 44 4c 4c 2e 6c 6f 67 00 } //1
		$a_01_7 = {5c 7e 53 65 72 76 65 72 2e 64 6c 6c 00 } //1
		$a_01_8 = {5c 7e 53 43 6d 64 2e 74 78 74 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}